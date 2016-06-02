class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :title, :body, presence: true
  # paginates_per 3
end
