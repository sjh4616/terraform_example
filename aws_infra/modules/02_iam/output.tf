output "ec2_instance_profile_name" {
  value = aws_iam_instance_profile.aws00_ec2_instance_profile.name
}
output "codedeploy_service_role_arn" {
  value = aws_iam_role.aws00_codedeploy_service_role.arn
}