module PagesHelper
  def parse_tweet content
    content.gsub(/http\S*\b/) do |match|
      "<a href='#{match}' target='_blank'>#{match}</a>"
    end.html_safe
  end
end
