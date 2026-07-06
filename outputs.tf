output "app_service_source_control_slots" {
  description = "All app_service_source_control_slot resources"
  value       = azurerm_app_service_source_control_slot.app_service_source_control_slots
  sensitive   = true
}
output "app_service_source_control_slots_branch" {
  description = "List of branch values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.branch]
}
output "app_service_source_control_slots_github_action_configuration" {
  description = "List of github_action_configuration values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.github_action_configuration]
  sensitive   = true
}
output "app_service_source_control_slots_repo_url" {
  description = "List of repo_url values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.repo_url]
}
output "app_service_source_control_slots_rollback_enabled" {
  description = "List of rollback_enabled values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.rollback_enabled]
}
output "app_service_source_control_slots_scm_type" {
  description = "List of scm_type values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.scm_type]
}
output "app_service_source_control_slots_slot_id" {
  description = "List of slot_id values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.slot_id]
}
output "app_service_source_control_slots_use_local_git" {
  description = "List of use_local_git values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.use_local_git]
}
output "app_service_source_control_slots_use_manual_integration" {
  description = "List of use_manual_integration values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.use_manual_integration]
}
output "app_service_source_control_slots_use_mercurial" {
  description = "List of use_mercurial values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.use_mercurial]
}
output "app_service_source_control_slots_uses_github_action" {
  description = "List of uses_github_action values across all app_service_source_control_slots"
  value       = [for k, v in azurerm_app_service_source_control_slot.app_service_source_control_slots : v.uses_github_action]
}

