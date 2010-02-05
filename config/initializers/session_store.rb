# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jquery_unobtrusive_session',
  :secret      => '5e8538be11709178ba3b0602f3401913658139bfd585e2c563e5971f8714f6735046ba05d2fad0ecf5c957020dea7232ac74ae8582af09f756de595a590a1dde'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
