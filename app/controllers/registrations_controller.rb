class RegistrationsController < Devise::RegistrationsController
	before_action :configure_permitted_parameters, :only => [:create]

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:create) { |u| u.permit(:name, :email, :password, :password_confirmation, :admin, :wallet, :organization_id) }
	end
end