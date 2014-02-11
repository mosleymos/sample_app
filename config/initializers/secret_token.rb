# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
require 'securerandom'


 SampleApp::Application.config.secret_token='ae7c41b544dbdbbb0176464e4d57edd6724c86f83ce0a4de069f44f6d5dffff52965598aa9d987faa944f60f83ed8e00f0be749e319228205d7040c02f21acc5' 


def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end


