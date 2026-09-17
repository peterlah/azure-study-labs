variable "subscription_id" {
  description = "리소스 그룹을 만들 Azure 구독 ID"
  type        = string

  validation {
    condition     = can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.subscription_id))
    error_message = "subscription_id에는 Azure 구독 ID를 입력하세요."
  }
}

variable "resource_group_name" {
  description = "Azure에 만들 리소스 그룹 이름"
  type        = string
  default     = "rg-azure-study-terraform-01"

  validation {
    condition     = length(trimspace(var.resource_group_name)) >= 3
    error_message = "resource_group_name은 세 글자 이상으로 입력하세요."
  }
}

variable "location" {
  description = "리소스 그룹을 만들 Azure 리전"
  type        = string
  default     = "koreacentral"
}
