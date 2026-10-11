resource "azuredevops_workitemtrackingprocess_state" "workitemtrackingprocess_states" {
  for_each = var.workitemtrackingprocess_states

  color             = each.value.color
  name              = each.value.name
  process_id        = each.value.process_id
  state_category    = each.value.state_category
  work_item_type_id = each.value.work_item_type_id
  order             = each.value.order

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

