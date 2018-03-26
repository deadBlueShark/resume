class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def computer
    @tweets = SocialTool.twitter_search
  end
end
