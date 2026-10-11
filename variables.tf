variable "workitemtrackingprocess_states" {
  description = <<EOT
Map of workitemtrackingprocess_states, attributes below
Required:
    - color
    - name
    - process_id
    - state_category
    - work_item_type_id
Optional:
    - order
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    color             = string
    name              = string
    process_id        = string
    state_category    = string
    work_item_type_id = string
    order             = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_states : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.process_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_states : (
        length(trimspace(v.work_item_type_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_states : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_states : (
        can(regex("^#[0-9a-fA-F]{6}$", v.color))
      )
    ])
    error_message = "Must be a hexadecimal color code, i.e. #b2b2b2"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_states : (
        contains(["Proposed", "InProgress", "Resolved", "Completed", "Removed"], v.state_category)
      )
    ])
    error_message = "must be one of: \"Proposed\", \"InProgress\", \"Resolved\", \"Completed\", \"Removed\""
  }
}

