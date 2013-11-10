require 'rbnacl'
require 'digest'

module Sqrl
  class Nut < ActiveRecord::Base
    validates :ip, presence: true
    validate do
        errors.add(:base, 'Nut has expired') unless self.not_expired?
      end
    
    def not_expired?
      self.expires ||= Time.now + 10.minutes
      if Time.now.to_i < self.expires
        TRUE
      else
        FALSE
      end
    end
    def generate_nut
      random_bytes = RbNaCl::Random.random_bytes(160)
      # strip trailing = signs from output
      self.content = Base64.urlsafe_encode64(Digest::SHA1.hexdigest(random_bytes)).gsub("=","")
    end
    before_create{
      self.generate_nut
    }
  end
end