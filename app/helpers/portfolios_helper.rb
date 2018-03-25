module PortfoliosHelper
  def thumbnail_image portfolio
    if portfolio.thumb_image.present?
      portfolio.thumb_image
    else
      "thumbnail_default.png"
    end
  end

  def main_image portfolio
    if portfolio.main_image.present?
      portfolio.main_image
    else
      "main_default.png"
    end
  end
end
