module Users
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def facebook
      auth = request.env['omniauth.auth']

      return redirect_to "/users/auth/facebook?auth_type=rerequest&scope=email" if auth.info.email.blank?

      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @user = User.from_omniauth(auth)

      if @user.persisted?
        sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
        set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
      else
        session['devise.facebook_data'] = auth
        redirect_to root_url
      end
    end
  end
end
