variable "app_service_source_control_slots" {
  description = <<EOT
Map of app_service_source_control_slots, attributes below
Required:
    - slot_id
Optional:
    - branch
    - repo_url
    - rollback_enabled
    - use_local_git
    - use_manual_integration
    - use_mercurial
    - github_action_configuration (block):
        - code_configuration (optional, block):
            - runtime_stack (required)
            - runtime_version (required)
        - container_configuration (optional, block):
            - image_name (required)
            - registry_password (optional)
            - registry_url (required)
            - registry_username (optional)
        - generate_workflow_file (optional)
EOT

  type = map(object({
    slot_id                = string
    branch                 = optional(string)
    repo_url               = optional(string)
    rollback_enabled       = optional(bool, false)
    use_local_git          = optional(bool, false)
    use_manual_integration = optional(bool, false)
    use_mercurial          = optional(bool, false)
    github_action_configuration = optional(object({
      code_configuration = optional(object({
        runtime_stack   = string
        runtime_version = string
      }))
      container_configuration = optional(object({
        image_name        = string
        registry_password = optional(string)
        registry_url      = string
        registry_username = optional(string)
      }))
      generate_workflow_file = optional(bool, true)
    }))
  }))
}

