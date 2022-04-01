view: transito_paulo {
  derived_table: {
    sql: SELECT*FROM `pe-z23kcwlecwzpftnx2uan.testeteste_uz6erqtf8i81.tabela_transito4`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: data_inversa {
    type: string
    sql: ${TABLE}.data_inversa ;;
  }

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension: horario {
    type: string
    sql: ${TABLE}.horario ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: km {
    type: string
    sql: ${TABLE}.km ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.municipio ;;
  }

  dimension: causa_acidente {
    type: string
    sql: ${TABLE}.causa_acidente ;;
  }

  dimension: tipo_acidente {
    type: string
    sql: ${TABLE}.tipo_acidente ;;
  }

  dimension: classificacao_acidente {
    type: string
    sql: ${TABLE}.classificacao_acidente ;;
  }

  dimension: fase_dia {
    type: string
    sql: ${TABLE}.fase_dia ;;
  }

  dimension: sentido_via {
    type: string
    sql: ${TABLE}.sentido_via ;;
  }

  dimension: condicao_metereologica {
    type: string
    sql: ${TABLE}.condicao_metereologica ;;
  }

  dimension: tipo_pista {
    type: string
    sql: ${TABLE}.tipo_pista ;;
  }

  dimension: tracado_via {
    type: string
    sql: ${TABLE}.tracado_via ;;
  }

  dimension: pessoas {
    type: string
    sql: ${TABLE}.pessoas ;;
  }

  dimension: mortos {
    type: string
    sql: ${TABLE}.mortos ;;
  }

  dimension: feridos_leves {
    type: string
    sql: ${TABLE}.feridos_leves ;;
  }

  dimension: feridos_graves {
    type: string
    sql: ${TABLE}.feridos_graves ;;
  }

  dimension: ilesos {
    type: string
    sql: ${TABLE}.ilesos ;;
  }

  dimension: ignorados {
    type: string
    sql: ${TABLE}.ignorados ;;
  }

  dimension: feridos {
    type: string
    sql: ${TABLE}.feridos ;;
  }

  dimension: veiculos {
    type: string
    sql: ${TABLE}.veiculos ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: regional {
    type: string
    sql: ${TABLE}.regional ;;
  }

  dimension: delegacia {
    type: string
    sql: ${TABLE}.delegacia ;;
  }

  dimension: uop {
    type: string
    sql: ${TABLE}.uop ;;
  }

  dimension_group: fecha_carga {
    type: time
    datatype: datetime
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      id,
      data_inversa,
      dia_semana,
      horario,
      estado,
      km,
      municipio,
      causa_acidente,
      tipo_acidente,
      classificacao_acidente,
      fase_dia,
      sentido_via,
      condicao_metereologica,
      tipo_pista,
      tracado_via,
      pessoas,
      mortos,
      feridos_leves,
      feridos_graves,
      ilesos,
      ignorados,
      feridos,
      veiculos,
      latitude,
      longitude,
      regional,
      delegacia,
      uop,
      fecha_carga_time,
      location
    ]
  }
}
