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


構築手順 (How to Use)
リポジトリのクローン

Bash
git clone [https://github.com/Eliwod02/aws-terraform-portfolio.git](https://github.com/Eliwod02/aws-terraform-portfolio.git)
cd aws-terraform-portfolio
AWS認証情報の環境変数設定
PowerShell等でご自身のAWSアクセスキーを設定します。

PowerShell
$env:AWS_ACCESS_KEY_ID="あなたのアクセスキー"
$env:AWS_SECRET_ACCESS_KEY="あなたのシークレットアクセスキー"
Terraformの初期化
必要なプラグインをダウンロードします。

PowerShell
terraform init
構築内容の確認（Plan）

PowerShell
terraform plan
インフラの自動構築（Apply）

PowerShell
terraform apply
※実行時に yes を入力するとAWS上にサーバーが構築されます。

インフラの自動解体（Destroy）
検証終了後は、以下のコマンドでリソースを安全に削除します。

PowerShell
terraform destroy
