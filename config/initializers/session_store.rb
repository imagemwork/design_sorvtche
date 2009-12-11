# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_design_sorvtche_session',
  :secret      => '7a4ddd87edc3f53dce31f39c0533cb342a407db54fcb0eecd42c68aa82c72013f1fcb4c0d11b3a9b2b5303ab9ae2328618c159fa5ac18f6c1581728c8d9f7d2c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
