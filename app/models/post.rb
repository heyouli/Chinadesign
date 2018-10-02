class Post < ApplicationRecord
  def self.search(search_term)
  Post.where("name LIKE ?", "%#{search_term}%")
end
end
