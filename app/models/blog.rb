class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  enum status: {draft: 0, published: 1}

  validates :title, presence: true
  validates :body, presence: true

  belongs_to :topic#, optional: true
end
