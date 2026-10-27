output "workitemtrackingprocess_states_id" {
  description = "Map of id values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.id }
}
output "workitemtrackingprocess_states_color" {
  description = "Map of color values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.color }
}
output "workitemtrackingprocess_states_name" {
  description = "Map of name values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.name }
}
output "workitemtrackingprocess_states_order" {
  description = "Map of order values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.order }
}
output "workitemtrackingprocess_states_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.process_id }
}
output "workitemtrackingprocess_states_state_category" {
  description = "Map of state_category values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.state_category }
}
output "workitemtrackingprocess_states_url" {
  description = "Map of url values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.url }
}
output "workitemtrackingprocess_states_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_states, keyed the same as var.workitemtrackingprocess_states"
  value       = { for k, v in azuredevops_workitemtrackingprocess_state.workitemtrackingprocess_states : k => v.work_item_type_id }
}

