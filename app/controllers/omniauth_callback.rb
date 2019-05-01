class Pengguna::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
      # You need to implement the method below in your model (e.g. app/models/user.rb)
      @pengguna = Pengguna.from_omniauth(request.env['omniauth.auth'])

      if @pengguna.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect @pengguna, event: :authentication
        redirect_to :root
      else
        session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
        redirect_to new_user_registration_url, alert: @pengguna.errors.full_messages.join("\n")
      end
  end
end