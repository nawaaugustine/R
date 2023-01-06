
library(activityinfo)

databaseId <- "<DBID>"

filter <- "<TableID> == @user.office && <TableID> == @user.partner"


role <- list(
  id = "rp",
  label = "Reporting Partner",
  permissions = list(
    list(operation = "VIEW", filter = filter),
    list(operation = "ADD_RECORD", filter = filter),
    list(operation = "EDIT_RECORD", filter = filter),
    list(operation = "DELETE_RECORD", filter = filter),
    list(operation = "EXPORT_RECORDS")
  ),
  parameters = list(
    list(parameterId = "partner",
         label = "Partner",
         range = "cf31ndjl0lt6uno2"),
    list(parameterId = "office",
         label = "Office",
         range = "ch7bymul9pcck5118")),
  filters = list(
    list(id = "partner",
         label = "matches partner and office",
        filter = filter)
  )
)

updateRole(databaseId, role)
