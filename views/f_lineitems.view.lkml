view: f_lineitems {
  sql_table_name: "DATA_MART"."F_LINEITEMS" ;;

  dimension: l_availqty {
    type: number
    sql: ${TABLE}."L_AVAILQTY" ;;
    label: "Available Quantity"
  }
  dimension: l_clerk {
    type: string
    sql: ${TABLE}."L_CLERK" ;;
    label: "Clerk"
  }
  dimension: l_commitdatekey {
    type: number
    sql: ${TABLE}."L_COMMITDATEKEY" ;;
    hidden: yes
  }
  dimension: l_custkey {
    type: number
    sql: ${TABLE}."L_CUSTKEY" ;;
    hidden: yes
  }
  dimension: l_discount {
    type: number
    sql: ${TABLE}."L_DISCOUNT" ;;
    label: "Discount"
  }
  dimension: l_extendedprice {
    type: number
    sql: ${TABLE}."L_EXTENDEDPRICE" ;;
    label: "Extended Price"
  }
  dimension: l_linenumber {
    type: number
    sql: ${TABLE}."L_LINENUMBER" ;;
    label: "Line Number"
  }
  dimension: l_orderdatekey {
    type: number
    sql: ${TABLE}."L_ORDERDATEKEY" ;;
    hidden: yes
  }
  dimension: l_orderkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."L_ORDERKEY" ;;
    label: "Order Key"
  }
  dimension: l_orderpriority {
    type: string
    sql: ${TABLE}."L_ORDERPRIORITY" ;;
    label: "Order Priotity"
  }
  dimension: l_orderstatus {
    type: string
    sql: ${TABLE}."L_ORDERSTATUS" ;;
    label: "Order Status"
  }
  dimension: l_partkey {
    type: number
    sql: ${TABLE}."L_PARTKEY" ;;
    hidden: yes
  }
  dimension: l_quantity {
    type: number
    sql: ${TABLE}."L_QUANTITY" ;;
    label: "Quantity"
  }
  dimension: l_receiptdatekey {
    type: number
    sql: ${TABLE}."L_RECEIPTDATEKEY" ;;
    hidden: yes
  }
  dimension: l_returnflag {
    type: string
    sql: ${TABLE}."L_RETURNFLAG" ;;
    label: "Return Flag"
  }
  dimension: l_shipdatekey {
    type: number
    sql: ${TABLE}."L_SHIPDATEKEY" ;;
    hidden: yes
  }
  dimension: l_shipinstruct {
    type: string
    sql: ${TABLE}."L_SHIPINSTRUCT" ;;
    label: "Shiping Struct"
  }
  dimension: l_shipmode {
    type: string
    sql: ${TABLE}."L_SHIPMODE" ;;
    label: "Shiping Mode"
  }
  dimension: l_shippriority {
    type: number
    sql: ${TABLE}."L_SHIPPRIORITY" ;;
    label: "Shiping Priority"
  }
  dimension: l_suppkey {
    type: number
    sql: ${TABLE}."L_SUPPKEY" ;;
    hidden: yes
  }
  dimension: l_supplycost {
    type: number
    sql: ${TABLE}."L_SUPPLYCOST" ;;
    label: "Supply Cost"
  }
  dimension: l_tax {
    type: number
    sql: ${TABLE}."L_TAX" ;;
    label: "Tax"
  }
  dimension: l_totalprice {
    type: number
    sql: ${TABLE}."L_TOTALPRICE" ;;
    label: "Total Price"
  }

  measure: count {
    type: count
    label: "Order Count"
  }

  measure: total_sale_price {
    type: number
    sql: ${l_totalprice} * (1 + ${l_tax}) ;;
    value_format_name: usd
    label: "Total Sale Price"
  }

  measure: total_sales_from_items_sold {
    type: sum
    sql: ${l_totalprice} * (1 + ${l_tax}) ;;
    value_format_name: usd
    label: "Total sales from items sold"
  }

  measure: average_sale_price {
    type: number
    sql: ROUND(DIVIDE(${total_sale_price}, ${l_quantity}), 2) ;;
    value_format_name: usd
    label: "Average Sale Price"
  }

  measure: average_sale_price_from_items_sold {
    type: number
    sql: ROUND(${total_sales_from_items_sold} / ${total_quantity_sold}, 2) ;;
    value_format_name: usd
    label: "Average sale price of items sold"
  }

  measure: cumulative_total_sales {
    type: running_total
    sql: ${total_sale_price} ;;
    value_format_name: usd
    label: "Cumulative Total Sales"
  }

  measure: cumulative_total_sales_from_items_sold {
    type: running_total
    sql: ${total_sales_from_items_sold} ;;
    value_format_name: usd
    label: "Cumulative total sales from items sold"
  }

  measure: total_quantity_sold {
    type: sum
    sql: ${l_quantity} ;;
    label: "Total Quantity Sold"
  }

}
