module Placeholder
  extend ActiveSupport::Concern

  included do
    def image_generator(width, height)
      "http://placehold.it/#{width}X#{height}"
    end
  end
end
