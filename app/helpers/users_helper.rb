module UsersHelper

  def admin_rights(&block)
    capture(&block) if current_user.admin
  end
end
