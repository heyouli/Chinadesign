class Post < ApplicationRecord
  has_many :comments
  def self.search(search_term)
  Post.where("name LIKE ?", "%#{search_term}%")
end
end
