class Post < ApplicationRecord
  validates :name, presence: true #Adds validation to the Post model。
  validates :theme, presence: true #Adds validation to the Post model。
  validates :description, presence: true #Adds validation to the Post model。

  has_many :comments
  def self.search(search_term)
  Post.where("name LIKE ?", "%#{search_term}%")
end
end
