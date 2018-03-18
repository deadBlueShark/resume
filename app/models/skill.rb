class Skill < ApplicationRecord
  include Placeholder

  before_save {self.icon ||= image_generator(250, 250)}

  validates :name, presence: true
  validates :percent, presence: true
end
