resource "aws_ssm_parameter" "ssm_aws_kms_id" {
  name        = "/test/encryption/keyid"
  description = "SSM Parameter containing kms Key for data encryption"
  type        = "String"
  value       = aws_kms_key.kms_key_encryption.arn
  overwrite   = "true"
}