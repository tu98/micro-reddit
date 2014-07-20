class Post < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true, length: {maximum: 70} 
	validates :body, presence: true
	belongs_to :user
	has_many :comments
end
