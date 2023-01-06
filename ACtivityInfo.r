
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
         range = "<TableID>"),
    list(parameterId = "office",
         label = "Office",
         range = "<TableID>")),
  filters = list(
    list(id = "partner",
         label = "matches partner and office",
        filter = filter)
  )
)

updateRole(databaseId, role)
