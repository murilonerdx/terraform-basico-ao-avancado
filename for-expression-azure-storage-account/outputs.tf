output "storage_accounts_id" {
  description = "ID das Storage Accounts criadas na Azure"
  value       = [for sa in azurerm_storage_account.storage_account : sa.id]
}

output "sa_primary_access_keys" {
  description = "Primary Access Keys das Storage Accounts criadas na Azure"
  value       = { for chave, sa in azurerm_storage_account.storage_account : chave => sa.primary_access_key }
  sensitive   = true
}