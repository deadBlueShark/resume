module ApplicationHelper
  def generate_title(title = "")
    base_title = "Portfolio"
    title.blank? ? base_title : "#{title} | #{base_title}"
  end

  def user_log_status
    if current_user.is_a? User
      logout_link = link_to "Logout", destroy_user_session_path, method: :delete
      insert_content_to_tag :div, logout_link, "item"
    else
      login_link = link_to "Login", new_user_session_path
      signup_link = link_to "Register", new_user_registration_path
      insert_content_to_tag(:div, login_link, "item") +
      insert_content_to_tag(:div, signup_link, "item")
    end
  end

  def source_helper
    content = "Thank for visiting me from #{session[:source]}"
    insert_content_to_tag(:div, content) if session[:source]
  end

  private

  def insert_content_to_tag html_tag, content, html_class = nil
    content_tag html_tag, content, class: html_class
  end
end
