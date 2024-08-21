connection: "tpchlooker"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ds_epam_default_datagroup {
  sql_trigger: SELECT CURRENT_DATE() ;;
  max_cache_age: "1 hour"
}

persist_with: ds_epam_default_datagroup



explore: f_lineitems {
  label: "Summary Dashboard"
  description: "Explore for Summary Dashboard"
  #hidden: yes

  join: d_customer {
    type: left_outer
    sql_on: ${f_lineitems.l_custkey} = ${d_customer.c_custkey} ;;
    relationship: many_to_one
  }

  join: d_dates {
    type: left_outer
    sql_on: ${f_lineitems.l_orderdatekey} = ${d_dates.datekey} ;;
    relationship: many_to_one
  }

  join: d_part {
    type: left_outer
    sql_on: ${f_lineitems.l_partkey} = ${d_part.p_partkey} ;;
    relationship: many_to_one
  }

  join: d_supplier {
    type: left_outer
    sql_on: ${f_lineitems.l_suppkey} = ${d_supplier.s_suppkey} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  label: "Agg PDT"
  description: "Explore for Summary Dashboard"
  #hidden: yes
  join: d_customer {
    type: left_outer
    sql_on: ${order_items.l_custkey} = ${d_customer.c_custkey} ;;
    relationship: many_to_one
  }

  join: d_dates {
    type: left_outer
    sql_on: ${order_items.l_orderdatekey} = ${d_dates.datekey} ;;
    relationship: many_to_one
  }

  join: d_part {
    type: left_outer
    sql_on: ${order_items.l_partkey} = ${d_part.p_partkey} ;;
    relationship: many_to_one
  }

  join: d_supplier {
    type: left_outer
    sql_on: ${order_items.l_suppkey} = ${d_supplier.s_suppkey} ;;
    relationship: many_to_one
  }

}

# explore: order_items_pdt {
#   view_name: order_items_pdt
#   join: d_part {
#     type: left_outer
#     sql_on: ${order_items_pdt.l_partkey} = ${d_part.p_partkey} ;;
#     relationship: many_to_one
#   }
#   aggregate_table: order_items_pdt_aggregate {
#     materialization: {
#       datagroup_trigger: my_datagroup
#     }
#     query: {
#       dimensions: [order_items_pdt.l_orderkey]
#       measures: [order_items_pdt.total_sales_from_items_sold, order_items_pdt.total_quantity_sold]
#     }
#   }

explore: order_PDT {
  label: " PDT"
  description: "Explore for Summary Dashboard"
  aggregate_table: order_items_agg123 {
    query: {
      dimensions: [l_orderkey]
      measures: [order_PDT.m_number_of_item_returned, order_PDT.m_total_sales_from_items_sold]
    }
    materialization: {
      datagroup_trigger: ds_epam_default_datagroup
    }
  }
}
