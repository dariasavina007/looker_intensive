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
    type: string
    case: {
      when: {
        sql: ${s_acctbal} <= 0 ;;
        label: "<= 0"
      }
      when: {
        sql: ${s_acctbal} >= 1 AND ${s_acctbal} <= 3000 ;;
        label: "1 - 3000"
      }
      when: {
        sql: ${s_acctbal} >= 3001 AND ${s_acctbal} <= 5000 ;;
        label: "3001 - 5000"
      }
      when: {
        sql: ${s_acctbal} >= 5001 AND ${s_acctbal} <= 7000 ;;
        label: "5001 - 7000"
      }
      when: {
        sql: ${s_acctbal} >= 7001 ;;
        label: "> 7000"
      }
      else: "Unknown"
    }
  }
  dimension: s_address {
    type: string
    sql: ${TABLE}."S_ADDRESS" ;;
    label: "Address"
  }
  dimension: s_name {
    type: string
    sql: ${TABLE}."S_NAME" ;;
    label: "Name"
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
