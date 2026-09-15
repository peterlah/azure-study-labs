# Azure Study Labs

Azure 학습 사이트에서 사용하는 실습을 하나씩 재검증하고, 현재 도구와 Azure 환경에 맞게 보완하는 공개 저장소입니다.

이 저장소에는 검증을 시작한 실습만 추가합니다. 최종적으로 [Azure 실습 진도판](https://peterlah.github.io/azure-study/)이 이 저장소의 검증된 코드를 기준으로 안내하도록 전환합니다.

## 디렉터리

```text
labs/
├── terraform/   1~4단계
├── network/     5~10단계
├── aks/         11~18단계
└── ai/          19~22단계
docs/
└── validation-template.md
```

각 실습은 `labs/<영역>/<실습 이름>/`에 둡니다. 원본 README, 실행 코드와 검증 기록을 한 폴더에서 함께 관리합니다.

## 실습 반영 기준

1. 원본 README와 모든 실행 파일을 확인합니다.
2. 키, 토큰, 구독 ID와 개인 환경값을 예시 변수로 바꿉니다.
3. Terraform, 셸, Python, Kubernetes 매니페스트 등 파일별 정적 검사를 통과시킵니다.
4. 변경 전 확인 명령과 실제 배포를 실행합니다.
5. 예상 결과, 실제 결과와 수정 내용을 기록합니다.
6. 생성한 Azure 리소스를 정리하고 잔여 리소스를 확인합니다.
7. 검증을 마친 실습만 `검증 완료`로 표시합니다.

검증 기록은 [검증 기록 양식](docs/validation-template.md)을 복사해 사용합니다.

## 보안 원칙

- 실제 자격 증명, kubeconfig, Terraform state와 개인 키를 커밋하지 않습니다.
- `.env` 대신 값이 비어 있는 `.env.example`을 제공합니다.
- 배포 전에 비용이 큰 리소스와 지원 리전을 확인합니다.
- 예제 이름과 주소는 다른 실습과 충돌하지 않게 변수로 관리합니다.

## 출처

초기 학습 흐름은 [Houssem Dellai](https://github.com/HoussemDellai)의 `terraform-course`, `azure-network-course`, `aks-course`, `ai-course`를 참고합니다. 각 실습 폴더에는 사용한 원본 저장소와 커밋을 기록합니다.
