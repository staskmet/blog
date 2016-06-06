class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :title, :body, presence: true
  has_many :comments
end
