# Provide the encryption key for attr_encryption fields
require 'active_support/concern'

module Encryptable
  extend ActiveSupport::Concern

  def db_encryption_key
    # If in production, require key to be set
    if Rails.env.production? || Rails.env.staging?
      fail 'You must set the DB_ENCRYPTION_KEY environment variable' unless ENV['DB_ENCRYPTION_KEY']
      ENV['DB_ENCRYPTION_KEY']
    else
      ENV['DB_ENCRYPTION_KEY'] ||= 'test_key'
    end
  end
end
