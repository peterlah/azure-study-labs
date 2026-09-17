# 검증 기록

## 기본 정보

| 항목 | 내용 |
|---|---|
| 사이트 단계 | 1.1 |
| 실습 이름 | 리소스 그룹 만들기 |
| 실습 경로 | `labs/terraform/01-resource-group` |
| 검증 날짜 | 2026-09-17 |
| 검증 환경 | macOS arm64, Terraform 1.15.5, Azure CLI 2.86.0 |

## 검증 결과

- [x] 개인 환경값을 `terraform.tfvars`로 분리했습니다.
- [x] 기본 리전을 `koreacentral`로 설정했습니다.
- [x] `terraform fmt -check`를 통과했습니다.
- [x] `terraform validate`를 통과했습니다.
- [x] AzureRM Provider 5.5.0으로 초기화했습니다.
- [x] 리소스 그룹 1개를 만드는 plan을 확인했습니다.
- [ ] 실제 리소스 생성 결과를 확인했습니다.
- [ ] 삭제 후 잔여 리소스가 없는지 확인했습니다.

## 상태

plan 검증 완료. 실제 생성과 삭제를 확인한 뒤 전체 검증 완료로 변경합니다.
