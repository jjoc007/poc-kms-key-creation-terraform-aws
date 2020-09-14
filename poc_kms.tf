resource "aws_kms_key" "kms_key_encryption" {
  description = "The KMS key for env used by parameter store to encrypt and decrypt data on database"
}

resource "aws_kms_alias" "ogmio_kms_key_encryption_alias" {
  name          = "alias/test/alias"
  target_key_id = aws_kms_key.kms_key_encryption.key_id
}