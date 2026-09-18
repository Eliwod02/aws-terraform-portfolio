# AWSを使用するための設定（東京リージョンを指定）
provider "aws" {
  region = "ap-northeast-1"
}

# 最新のAmazon Linux 2023のOS情報を自動取得
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

# AWS上にEC2サーバー（インスタンス）を構築
resource "aws_instance" "portfolio_server" {
  # 取得したAmazon LinuxのIDを指定
  ami           = data.aws_ami.amazon_linux.id
  
  # 無料枠の対象である t3.micro を指定
  instance_type = "t3.micro"

  # サーバーに名前を付ける
  tags = {
    Name = "Terraform-Server"
  }
}
