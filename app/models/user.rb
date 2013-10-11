class User < ActiveRecord::Base
	has_many :questions
  validates :email, :presence => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }

  validates_presence_of :username
end