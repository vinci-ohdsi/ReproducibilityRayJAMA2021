
# Update cohort SQL

sqlFiles <- list.files("inst/sql/sql_server/original",
                       pattern = ".epro.*\\.sql")

for (file in sqlFiles) {
  VaTools::translateToCustomVaSql(
    file.path("inst/sql/sql_server/original", file),
    NULL,
    file.path("inst/sql/sql_server/new", file))
}
