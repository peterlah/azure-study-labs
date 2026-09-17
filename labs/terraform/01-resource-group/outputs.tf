output "resource_group" {
  description = "생성한 리소스 그룹의 이름, 리전과 Azure 리소스 ID"
  value = {
    id       = azurerm_resource_group.this.id
    name     = azurerm_resource_group.this.name
    location = azurerm_resource_group.this.location
  }
}
