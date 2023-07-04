provider "snowflake" {
  username = "<SNOWFLAKE_USERNAME>"
  password = "<SNOWFLAKE_PASSWORD>"
  account  = "<SNOWFLAKE_ACCOUNT>"
  warehouse = "<SNOWFLAKE_WAREHOUSE>"
  database = "<SNOWFLAKE_DATABASE>"
  schema   = "<SNOWFLAKE_SCHEMA>"
}

resource "snowflake_query" "example_query" {
  name     = "example_query"
  query    = "SELECT * FROM ""ADMIN_UTILS"."SCHEMACHANGE"."CHANGE_HISTORY""
  database = "<SNOWFLAKE_DATABASE>"
  schema   = "<SNOWFLAKE_SCHEMA>"
  role     = "<SNOWFLAKE_ROLE>"
}
