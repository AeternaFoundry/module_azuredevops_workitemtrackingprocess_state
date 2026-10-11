output "workitemtrackingprocess_states_id" {
  description = "Map of id values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_states_color" {
  description = "Map of color values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no color are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.color if v.color != null && length(v.color) > 0 }
}
output "workitemtrackingprocess_states_name" {
  description = "Map of name values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no name are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workitemtrackingprocess_states_order" {
  description = "Map of order values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no order are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.order if v.order != null }
}
output "workitemtrackingprocess_states_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no process_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.process_id if v.process_id != null && length(v.process_id) > 0 }
}
output "workitemtrackingprocess_states_state_category" {
  description = "Map of state_category values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no state_category are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.state_category if v.state_category != null && length(v.state_category) > 0 }
}
output "workitemtrackingprocess_states_url" {
  description = "Map of url values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no url are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.url if v.url != null && length(v.url) > 0 }
}
output "workitemtrackingprocess_states_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states except keys with no work_item_type_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.work_item_type_id if v.work_item_type_id != null && length(v.work_item_type_id) > 0 }
}

