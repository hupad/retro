class ApplicationController < ActionController::Base

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(:email, :password, :password_confirmation, :is_team_lead, :team_id) }
	end

	def after_sign_in_path_for(resource)
		if current_user.is_team_lead
		    new_sretro_path
		else
			logged_in_user_team_id = current_user.team.id
			sretro_id = get_active_sretro_for_current_user logged_in_user_team_id
			redirect_user_to_pending_retros sretro_id
		end
	end

	def get_active_sretro_for_current_user team_id
		
		sretros = Sretro.where(["is_pending = ? and team_id = ?", 1, team_id]).limit(1).to_a
		
		sretro_id = nil		
		sretros.each do |sretro|
			sretro_id = sretro.id
		end
		
		sretro_id

	end

	def redirect_user_to_pending_retros id
		if !(id.nil?)
			sretro_new_retro_notes_path(sretro_id: id)
		else
			sretros_path
		end
	end
end
