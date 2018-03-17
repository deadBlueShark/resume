module BlogsHelper
  def change_block_status blog
    blog.draft? ? "Publish" : "Withdraw"
  end
end
