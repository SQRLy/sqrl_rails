require 'rbnacl'
require 'digest'

module Sqrl
  class Nut < ActiveRecord::Base
    validates :expires, presence: true, if: :not_expired?
    
    def not_expired?
      TRUE if self.expires.to_i > Time.now.to_i
    end
    def generate_nut
      random_bytes = RbNaCl::Random.random_bytes(160)
      self.content = Base64.urlsafe_encode64(Digest::SHA1.hexdigest(random_bytes)).gsub("=","")
    end
    before_create{
      self.expires = Time.now + 10.minutes
      self.generate_nut
    }
  end
end