class Portfolio < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged

  mount_uploader :main_image, PortfolioUploader
  mount_uploader :thumb_image, PortfolioUploader

  has_many :technologies, dependent: :destroy

  accepts_nested_attributes_for :technologies, reject_if: -> attr {attr[:name].blank?}

  validates :title, presence: true
  validates :subtitle, presence: true
  validates :body, presence: true

  scope :sort_by_position, ->{order position: :asc}
end
