module ApplicationHelper
  def generate_title(title = "")
    base_title = "Portfolio"
    title.blank? ? base_title : "#{title} | #{base_title}"
  end
end
