# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Server::Application.config.secret_key_base = '71e8575d0c782b705043fa11ce0cf4cdd0895bcebef6cf4036fa233fb0707e4c38f7545adfed26b4ed10841a12819a3c750d008696c1813a3965108e82f57238'
