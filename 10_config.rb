module Devise
  mattr_accessor :password_length
  @@password_length = 6..128

  mattr_accessor :mailer_sender
  @@mailer_sender = nil

  mattr_accessor :parent_controller
  @@parent_controller = "ApplicationController"

  def self.setup
    yield self
  end
end

Devise.setup do |config|
  config.password_length   = 8..128
  config.mailer_sender     = "Hassanin Ahmed <contact@hassanin.me>"
  config.parent_controller = 'BaseController'
end

