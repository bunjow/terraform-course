resource "aws_iam_role" "jenkins-role-docker" {
  name               = "jenkins-role-docker"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

resource "aws_iam_instance_profile" "jenkins-role-docker" {
  name = "jenkins-role-docker"
  role = aws_iam_role.jenkins-role-docker.name
}

resource "aws_iam_role_policy" "admin-policy" {
  name = "jenkins-admin-role-policy"
  role = aws_iam_role.jenkins-role-docker.id

  policy = <<-EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": [
          "*"
        ],
        "Effect": "Allow",
        "Resource": "*"
      }
    ]
  }
  EOF
}
