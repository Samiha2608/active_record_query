class Person < ApplicationRecord
  has_many :posts
  # named scopes
  scope :older_than, ->(age) { where("age > ?", age) }
  # conditional logic
  scope :maybe_named, ->(name) {
    name.present? ? where(name: name) : all
  }
  # default scopes applied to all queries until removed
  default_scope { order(:name) }
end
