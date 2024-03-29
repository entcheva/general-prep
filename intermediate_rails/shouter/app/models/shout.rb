class Shout < ApplicationRecord
  belongs_to :user
  default_scope { order("created_at DESC") }
  validates :body, presence: true
end
