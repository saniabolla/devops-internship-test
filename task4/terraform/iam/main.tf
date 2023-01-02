resource "aws_iam_account_password_policy" "passwoed_policy" {
    minimum_password_length = 12
    require _lowercase_characters = true
    require_numbers = true
    require_uppercase_characters = true
    require_symbols = true
    max_password_age = 0
    allow_users_to_change_password = true
    password_reuse_prevention = 5
}