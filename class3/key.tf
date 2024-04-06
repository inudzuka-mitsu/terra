resource "aws_key_pair" "hello" {
  key_name   = "hello-key"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = local.common_tags
}