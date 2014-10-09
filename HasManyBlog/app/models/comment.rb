class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :comments
  belongs_to :comment
end