view: d_supplier {
  sql_table_name: "DATA_MART"."D_SUPPLIER" ;;

  dimension: s_acctbal {
    type: number
    sql: ${TABLE}."S_ACCTBAL" ;;
    label: "Account Balance"
  }

  dimension: cohort_of_suppliers_by_accbal {
    label: "Supplier Account Balance Range"
    description: "Supplier's account balance in range of"
    type: tier
    tiers: [1, 3001, 5001, 7001]
    style: integer
    sql: ${s_acctbal} ;;
  }

  dimension: s_address {
    type: string
    sql: ${TABLE}."S_ADDRESS" ;;
    label: "Address"
  }
  dimension: Name_url {
    type: string
    sql: concat("https://www.google.com/search?q=",{TABLE}."S_NAME") ;;
  }

  dimension: s_name {
    label: "Name"
    type: string
    link: {
      label: "Link to the supplier"
      url: "https://www.google.com/search?q={{d_supplier.s_name._value}}"
      icon_url:"https://cdn-icons-png.flaticon.com/512/4866/4866608.png"}
    sql: ${TABLE}."S_NAME" ;;
  }
  dimension: s_nation {
    type: string
    sql: ${TABLE}."S_NATION" ;;
    label: "Nation"
  }
  dimension: s_phone {
    type: string
    sql: ${TABLE}."S_PHONE" ;;
    label: "Phone"
  }
  dimension: s_region {
    type: string
    sql: ${TABLE}."S_REGION" ;;
    label: "Region"
  }
  dimension: s_suppkey {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."S_SUPPKEY" ;;
  }
  measure: count {
    type: count
    drill_fields: [s_name]
    label: "Supplier Count"
  }
}
