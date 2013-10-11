class Question < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :body
  has_many :answers
end