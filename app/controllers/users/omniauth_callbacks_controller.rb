module Users
  class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    ADMIN_EMAILS = ['mgorena@tamu.edu'].freeze

    def google_oauth2
      user = User.from_google(**from_google_params)

      if user.persisted?
        sign_out_all_scopes
        sign_in user
        Rails.logger.info "Signed in user with ID: #{user.id}"  # Confirm that user ID is available
        flash[:success] = t("devise.omniauth_callbacks.success", kind: "Google")

        if user.major_id.blank?
          redirect_to create_profile_user_path(user)
        else
          redirect_to root_path
        end
      else
        flash[:alert] = t("devise.omniauth_callbacks.failure", kind: "Google", reason: "User could not be authenticated.")
        redirect_to new_user_session_path
      end
    end

    protected

    def after_omniauth_failure_path_for(_scope)
      new_user_session_path
    end

    def after_sign_in_path_for(resource_or_scope)
      stored_location_for(resource_or_scope) || root_path
    end

    def from_google_params
      @from_google_params ||= {
        uid: auth.uid,
        email: auth.info.email,
        full_name: auth.info.name,
        isAdmin: ADMIN_EMAILS.include?(auth.info.email) ? true : false
      }
    end

    private

    def auth
      @auth ||= request.env["omniauth.auth"]
    end
  end
end
