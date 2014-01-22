module ApplicationHelper
  def user_logged_in(&block)
    capture(&block) if user_signed_in?
  end

  def user_logged_out(&block)
    capture(&block) if !user_signed_in?
  end
end
