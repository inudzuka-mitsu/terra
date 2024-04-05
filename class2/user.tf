resource "aws_iam_user" "lb" {
  for_each = toset(["lera", "lena", "lara"])
  name     = each.value
}

resource "aws_iam_group" "hello" {
  name = "devops"
}

resource "aws_iam_group_membership" "team" {
  name = "team"
  users = [
    for i in aws_iam_user.lb : i.name
  ]
  group = aws_iam_group.hello.name
}