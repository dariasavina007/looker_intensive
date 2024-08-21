view: order_PDT {
  derived_table: {
    explore_source: order_items{
      column: l_orderkey {}
      column: total_sales_from_items_sold {}
      column: number_of_item_returned {}
    }
    datagroup_trigger: ds_epam_default_datagroup
    #persist_for: "24 hours"
}
  dimension: l_orderkey {
    label: "Orders Order Key"
    description: ""
    type: number
  }

  dimension: total_sales_from_items_sold {
    label: "Orders Total Number of Items Sold"
    description: "Number of items that were sold."
    value_format: "#,##0"
    type: number
  }

  dimension: number_of_item_returned {
    label: "Orders Number of Items Returned"
    description: "Number of items that were returned by dissatisfied customers."
    value_format: "#,##0"
    type: number
  }

  measure: m_total_sales_from_items_sold {
    label: "Total Number of Items Sold"
    description: "Number of items that were sold."
    value_format: "#,##0"
    type: sum
    sql: ${total_sales_from_items_sold} ;;
  }

  measure: m_number_of_item_returned {
    label: "Number of Items Returned"
    description: "Number of items that were returned by dissatisfied customers."
    value_format: "#,##0"
    type: sum
    sql: ${number_of_item_returned} ;;
  }
}
