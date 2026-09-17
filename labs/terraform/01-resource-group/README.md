# 리소스 그룹 만들기

Terraform 구성, AzureRM Provider와 리소스 주소의 관계를 확인하는 첫 실습입니다.

## 파일

| 파일 | 역할 |
|---|---|
| `versions.tf` | Terraform과 AzureRM Provider 버전, Azure 구독 연결 |
| `variables.tf` | 구독 ID, 리소스 그룹 이름과 리전 입력 |
| `main.tf` | Azure 리소스 그룹 선언 |
| `outputs.tf` | 생성한 리소스 그룹의 이름, 리전과 ID 출력 |
| `terraform.tfvars.example` | 로컬 입력값 예시 |

## 입력값 준비

```sh
cp terraform.tfvars.example terraform.tfvars
az account show --query id -o tsv
```

두 번째 명령으로 확인한 구독 ID를 `terraform.tfvars`의 `subscription_id`에 입력합니다. `terraform.tfvars`는 Git에서 제외됩니다.

명령 실행 순서와 각 결과의 의미는 [Azure 공부의 리소스 그룹 만들기](https://peterlah.github.io/azure-study/#p1-0)에서 확인합니다.

## 검증 상태

- Terraform 1.15.5
- AzureRM Provider 5.5.0
- `terraform fmt -check`: 통과
- `terraform validate`: 통과
- `terraform plan`: 리소스 그룹 1개 생성 계획 확인
- 실제 생성과 삭제: 실습 진행 후 기록 예정
