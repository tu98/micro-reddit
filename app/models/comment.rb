class Comment < ActiveRecord::Base
  validates :body, presence: true, length: { maximum:1000 }
  validates :user, presence:true
  validates :post, presence:true

  belongs_to :user
  belongs_to :post

end
