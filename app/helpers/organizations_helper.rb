module OrganizationsHelper
  def my_org_ideas_by_coffer(category)
    current_user.organization.ideas.find(:all, :conditions => {:category => "#{category}"}).sort_by(&:coffer).reverse
  end
end
