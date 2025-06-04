
view: account_usage_sql_query {
  derived_table: {
    sql: WITH ranked_events AS (
          SELECT
              events__additional__fields__account_name.value.string_value  AS Account_Name,
              events__additional__fields__account_type.value.string_value  AS Account_Type,
              events__additional__fields__query_limit.value.string_value  AS Query_Limit,
              events__additional__fields__used_queries.value.string_value  AS Used_Queries,
              events__additional__fields__remaining_queries.value.string_value  AS Remaining_Queries,
              events__additional__fields__used_queries_percentage.value.string_value AS Used_Queries_Percentage,
              events__additional__fields__foundation_query_limit.value.string_value  AS Foundation_Query_Limit,
              events__additional__fields__used_foundation_queries.value.string_value  AS Used_Foundation_Queries,
              events__additional__fields__remaining_foundation_queries.value.string_value  AS Remaining_Foundation_Queries,
              events__additional__fields__used_foundation_queries_percentage.value.string_value  AS Used_Foundation_Queries_Percentage,
              events.metadata.event_timestamp.seconds  + (events.metadata.event_timestamp.nanos/1000000000.0) AS total_time,
              ROW_NUMBER() OVER (PARTITION BY events__additional__fields__account_name.value.string_value
                                 ORDER BY events.metadata.event_timestamp.seconds + (events.metadata.event_timestamp.nanos/1000000000.0) DESC) AS row_num
          FROM datalake.events  AS events
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__used_queries ON events__additional__fields__used_queries.key LIKE 'used\\_queries'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__account_name ON events__additional__fields__account_name.key LIKE 'account\\_name'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__account_type ON events__additional__fields__account_type.key LIKE 'account\\_type'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__foundation_query_limit ON events__additional__fields__foundation_query_limit.key LIKE 'foundation\\_query\\_limit'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__event_type ON events__additional__fields__event_type.key LIKE 'event\\_type'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__query_limit ON events__additional__fields__query_limit.key LIKE 'query\\_limit'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__remaining_foundation_queries ON events__additional__fields__remaining_foundation_queries.key LIKE 'remaining\\_foundation\\_queries'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__used_foundation_queries_percentage ON events__additional__fields__used_foundation_queries_percentage.key LIKE 'used_\\foundation_\\queries_\\percentage'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__used_foundation_queries ON events__additional__fields__used_foundation_queries.key LIKE 'used_\\foundation_\\queries'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__used_queries_percentage ON events__additional__fields__used_queries_percentage.key LIKE 'used_\\queries_\\percentage'
          LEFT JOIN UNNEST(events.additional.fields) as events__additional__fields__remaining_queries ON events__additional__fields__remaining_queries.key LIKE 'remaining\\_queries'
          WHERE (events.metadata.log_type ) = 'TEAM_CYMRU_SCOUT_THREATINTEL'
            AND (events__additional__fields__event_type.value.string_value ) = 'account_usage'
      )
      SELECT
          Account_Name,
          Account_Type,
          Query_Limit,
          Used_Queries,
          Remaining_Queries,
          Used_Queries_Percentage,
          Foundation_Query_Limit,
          Used_Foundation_Queries,
          Remaining_Foundation_Queries,
          Used_Foundation_Queries_Percentage
      FROM ranked_events
      WHERE row_num = 1
      ORDER BY total_time DESC ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.Account_Name ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.Account_Type ;;
  }

  dimension: query_limit {
    type: string
    sql: ${TABLE}.Query_Limit ;;
  }

  dimension: used_queries {
    type: string
    sql: ${TABLE}.Used_Queries ;;
  }

  dimension: remaining_queries {
    type: string
    sql: ${TABLE}.Remaining_Queries ;;
  }

  dimension: used_queries_percentage {
    type: string
    sql: ${TABLE}.Used_Queries_Percentage ;;
  }

  dimension: foundation_query_limit {
    type: string
    sql: ${TABLE}.Foundation_Query_Limit ;;
  }

  dimension: used_foundation_queries {
    type: string
    sql: ${TABLE}.Used_Foundation_Queries ;;
  }

  dimension: remaining_foundation_queries {
    type: string
    sql: ${TABLE}.Remaining_Foundation_Queries ;;
  }

  dimension: used_foundation_queries_percentage {
    type: string
    sql: ${TABLE}.Used_Foundation_Queries_Percentage ;;
  }

  set: detail {
    fields: [
        account_name,
  account_type,
  query_limit,
  used_queries,
  remaining_queries,
  used_queries_percentage,
  foundation_query_limit,
  used_foundation_queries,
  remaining_foundation_queries,
  used_foundation_queries_percentage
    ]
  }
}
