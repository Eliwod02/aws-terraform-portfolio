# AWS Infrastructure Automation with Terraform

Terraformを使用して、AWS上にEC2インスタンス（Amazon Linux 2023）を自動構築・管理するためのインフラコード（IaC）のポートフォリオです。

## 使用技術 (Tech Stack)
- Cloud: AWS (Tokyo Region / ap-northeast-1)
- Infrastructure as Code: Terraform
- OS: Amazon Linux 2023 (Free Tier: t3.micro)
- Version Control: Git / GitHub

## ディレクトリ構成
```text
aws-terraform-portfolio/
├── .gitignore       # 管理外にするファイルを指定
└── main.tf          # インフラの定義（プロバイダー、AMI自動取得、EC2設定）
