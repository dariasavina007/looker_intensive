view: order_items {
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
    drill_fields: [l_shipmode, d_supplier.cohort_of_suppliers_by_accbal, d_supplier.s_region]
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

  measure: total_sales_from_items_sold {
    type: sum
    sql: ${l_totalprice} * (1 + ${l_tax}) ;;
    value_format_name: usd
    label: "Total sales from items sold"
  }

  measure: average_sale_price_from_items_sold {
    type: number
    sql: ROUND(${total_sales_from_items_sold} / ${total_quantity_sold}, 2) ;;
    value_format_name: usd
    label: "Average sale price of items sold"
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
  measure: total_sales_price_air {
    label: "Total Sale Price Shipped By Air"
    description: "Total sales of items shipped by air"
    type: sum
    sql: ${l_totalprice};;
    filters: [l_shipmode: "AIR"]
    value_format_name: usd
  }

  measure: total_sales_price_united_states {
    label: "Total UNITED STATES Sales"
    description: "Total sales by customers from UNITED STATES"
    type: sum
    sql: ${l_totalprice};;
    filters: [d_supplier.s_nation: "UNITED STATES"]
    value_format_name: usd
  }

  measure: total_gross_revenue {
    label: "Total Gross Revenue"
    description: "Total price of completed sales"
    type: sum
    sql: ${l_totalprice};;
    filters: [l_orderstatus:  "F"]
    value_format_name: usd
  }

  measure: total_cost {
    label: "Total Cost"
    description: "Total cost"
    type: sum
    sql: ${l_supplycost};;
    value_format_name: usd
  }

  measure: total_gross_margin_amount {
    label: "Total Gross Margin Amount"
    description: "Total Gross Revenue – Total Cost"
    type: number
    sql: ${total_gross_revenue} - ${total_cost};;
    value_format_name: usd
  }

  measure: gross_margin_percentage {
    label: "Goss Margin Percentage"
    description: "Total Gross Margin Amount / Total Gross Revenue"
    sql: ${total_gross_margin_amount} / NULLIF(${total_gross_revenue}, 0);;
    value_format_name: percent_2
  }

  measure: number_of_item_returned {
    label: "Number of Items Returned"
    description: "Number of items that were returned by dissatisfied customers"
    type: sum
    sql: ${l_quantity};;
    filters: [l_returnflag: "R"]
    value_format_name: decimal_0
  }

  measure: number_of_item_sold {
    label: "Total Number of Items Sold"
    description: "Number of items that were sold"
    type: sum
    sql: ${l_quantity};;
    value_format_name: decimal_0
  }

  measure: item_return_rate {
    label: "Item Return Rate"
    description: "Number Of Items Returned / Total Number Of Items Sold"
    sql: ${number_of_item_returned} / ${number_of_item_sold};;
    value_format_name: decimal_2
  }

  measure: average_spend_per_customer{
    label: "Average Spend per Customer"
    description: "Total Sale Price / Total Number of Customers"
    sql: ${total_sales_from_items_sold} / ${d_customer.count};;
    value_format_name: usd
  }
  measure: total_revenue_percentage {
    label: "Total Revenue %"
    description: "Contribution to total revenue for each supplier."
    type: number
    sql: ${total_gross_revenue} / SUM(${total_gross_revenue}) OVER ();;
    value_format_name: percent_2
  }

  parameter: timeframe_selector {
    type: unquoted
    default_value: "month"

    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Quarter"
      value: "quarter"
    }
    allowed_value: {
      label: "Year"
      value: "year"
    }
  }

  dimension: dynamic_timeframe {
    label_from_parameter: timeframe_selector

    sql:
      {% if timeframe_selector._parameter_value == "quarter" %} ${d_dates.quarter}
      {% elsif timeframe_selector._parameter_value == "year" %} ${d_dates.year}
      {% elsif timeframe_selector._parameter_value == "month" %} ${d_dates.month_num}
      {% endif %}
      ;;
  }


  dimension:dynamic_timeframe_title {
    label: "Chart Title"
    type: string
    sql:
     {% if timeframe_selector._parameter_value == "quarter" %} 'Quarterly'
      {% elsif timeframe_selector._parameter_value == "year" %} 'Yearly'
      {% elsif timeframe_selector._parameter_value == "month" %} 'Monthly'
      {% endif %}
      ;;
  }
  measure:  returned_rate_group{
    type: number
    value_format_name: percent_2
    sql:${item_return_rate} ;;
    html:
    {% if value >= 0.5 %}
      <font color="red">{{ rendered_value }}</font>
    {% elsif value >= 0.3  and value < 0.5%}
      <font color ="orange">{{ rendered_value }}</fontn>
    {% else %}
      <font color ="green">{{ rendered_value }}</font>
    {% endif %} ;;
  }
  }
