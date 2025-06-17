class Post < ApplicationRecord
  belongs_to :person
  has_many :comments

  scope :published, -> { where(published: true) }
  scope :by_title, ->(keyword) { where("title LIKE ?", "%#{keyword}%") }
end
