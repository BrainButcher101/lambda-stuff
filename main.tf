resource "aws_iam_user" "fancy_users" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index )}"
  path = "/system/"
}

resource "aws_iam_access_key" "newemp" {
  count = "${length(var.username)}"
  user = "${element(var.username,count.index)}"
}