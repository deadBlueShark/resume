class Portfolio < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged

  has_many :technologies, dependent: :destroy

  accepts_nested_attributes_for :technologies, reject_if: -> attr {attr[:name].blank?}

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :body, presence: true
  validates :main_image, presence: true
  validates :thumb_image, presence: true

  scope :sort_by_position, ->{order position: :asc}
end
