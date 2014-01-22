class StaticFilesController < ApplicationController
	layout 'landing'
	skip_before_action :require_login

  def landing
  end
end
