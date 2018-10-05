class Comment < ApplicationRecord
  validates :body, presence: true #Adds validation to the Post model。
  validates :user, presence: true #Adds validation to the Post model。
  validates :post, presence: true #Adds validation to the Post model。

  belongs_to :user
  belongs_to :post
end
