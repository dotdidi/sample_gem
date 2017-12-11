require 'active_interaction'
require 'xeroizer'
module QbXero
  class Contacts::Get < ActiveInteraction::Base

    hash :xero_auth do
      string :oauth_consumer_key
      string :oauth_consumer_secret
    end
    validates :xero_auth, presence: true

    def execute
      puts xero_auth.inspect
    end

  end
end
