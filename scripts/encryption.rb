# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
password ="abc123"
encrypted_password = BCrypt::Password.create(password)
puts encrypted_password
# $2a$12$vTWAQpVJBMZ7SwLmXUYjQ.UlEka2raBzsyMW4vWrDnSyoH5Dbzp6S
# 2. prepare encrypted string for testing
puts BCrypt::Password.new(encrypted_password) == "abc123"
# 3. test secret against prepared encrypted string
