connection: "tpchlooker"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ds_epam_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ds_epam_default_datagroup

explore: d_customer {
  hidden: yes
}

explore: d_dates {
  hidden: yes
}

explore: d_part {
  hidden: yes
}

explore: d_supplier {
  hidden: yes
}

explore: f_lineitems {
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
