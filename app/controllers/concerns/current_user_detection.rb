module CurrentUserDetection
  def current_user
    super || guest_user
  end

  private

  def guest_user
    GuestUser.new name: "Guest User", email: "guest@example.com"
  end
end
