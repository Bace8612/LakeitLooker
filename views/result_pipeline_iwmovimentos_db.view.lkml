# The name of this view in Looker is "Result Pipeline Iwmovimentos Db"
view: result_pipeline_iwmovimentos_db {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `testelooker_7yhfoaw4c7m1.ResultPipelineIWMovimentosDB`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cod Plataforma" in Explore.

  dimension: cod_plataforma {
    type: string
    sql: ${TABLE}.COD_PLATAFORMA ;;
  }

  dimension: cod_tipo_mov_dw {
    type: string
    sql: ${TABLE}.COD_TIPO_MOV_DW ;;
  }

  dimension: dat_ativacao {
    type: string
    sql: ${TABLE}.DAT_ATIVACAO ;;
  }

  dimension: dat_movimento {
    type: string
    sql: ${TABLE}.DAT_MOVIMENTO ;;
  }

  dimension: dsc_motivo_sts {
    type: string
    sql: ${TABLE}.DSC_MOTIVO_STS ;;
  }

  dimension: dsc_nome_cliente {
    type: string
    sql: ${TABLE}.DSC_NOME_CLIENTE ;;
  }

  dimension: dw_num_ntc {
    type: string
    sql: ${TABLE}.DW_NUM_NTC ;;
  }

  dimension_group: fecha_carga {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: id_cod_plataforma {
    type: string
    sql: ${TABLE}.ID_COD_PLATAFORMA ;;
  }

  dimension: mercado {
    type: string
    sql: ${TABLE}.MERCADO ;;
  }

  dimension: num_cnpj {
    type: string
    sql: ${TABLE}.NUM_CNPJ ;;
  }

  dimension: num_ntc {
    type: string
    sql: ${TABLE}.NUM_NTC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
