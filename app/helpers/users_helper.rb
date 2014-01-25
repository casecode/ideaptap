module UsersHelper

  def admin_rights(&block)
    capture(&block) if current_user.admin
  end

  def my_ideas_most_recent_first
    current_user.ideas.sort{ |a,b| b.created_at <=> a.created_at }
  end

  def my_org_ideas_by_coffer(category)
  	current_user.organization.ideas.find(:all, :conditions => {:category => "#{category}"}).sort_by(&:coffer).reverse
  end
end
