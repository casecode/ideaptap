module UsersHelper

	def admin_rights(&block)
		capture(&block) if current_user.admin
	end

	def my_ideas_most_recent_first
		current_user.ideas.sort{ |a,b| b.created_at <=> a.created_at }
	end

	def my_org_ideas_by_coffer_top3(category)
		current_user.organization.ideas.find(:all, :conditions => {:category => "#{category}"}).sort_by(&:coffer).reverse.first(3)
	end

	def my_contributions
		sql = "SELECT a.idea_id, sum(a.amount) as total_contribution, b.title, b.coffer " +
					"FROM transactions a " +
					"INNER JOIN ideas b ON a.idea_id = b.id " +
					"WHERE a.user_id = ? " +
					"GROUP BY a.idea_id, b.title, b.coffer " +
					"ORDER BY sum(a.amount) DESC"
		Transaction.find_by_sql([sql, current_user.id])
	end
end
