# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = file("~/.ssh/id_rsa.pub")
# }

# resource "aws_s3_bucket" "s3-bucket" {
#   bucket_prefix = "hello-"
# }

# resource "aws_s3_object" "object" {
#   depends_on = [aws_s3_bucket.s3-bucket]
#   bucket     = "vb-fr-buckets3-kaizen"
#   key        = "main.tf"
#   source     = "main.tf"
# }