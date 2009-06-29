# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sbtest_session',
  :secret      => 'aa3c9e06e7e8bf94077545e70212089b5f2e3c708c047d60e0b0baa1f1dd0087efd18dba32e379dfc04e2467a47d65772db71811ee56e90f397d582650312bc0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
