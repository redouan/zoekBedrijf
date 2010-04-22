# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Memocom_session',
  :secret      => '019a3cbe659b552d6c8d7a84573b2f1ed5643e2a452a870820212eaf44019f08a1ac305baefa135b97e57d9b07bfde173647d204e11fd1b6f7cce3adef059515'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
