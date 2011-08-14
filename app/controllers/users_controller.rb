class UsersController < ApplicationController
  before_filter :authenticate_user!
   layout 'application'

  expose(:new_user) { User.new(params[:user]) }
  expose(:user) { current_user }
  expose(:user_email) { session.delete(:new_user_email) }

  def index

  end

  def token

  end

    def create
    if new_user.save
      session[:new_user_email] = new_user.email
#      case params[:account_type]
#      when "patron"
#        redirect_to new_invitation_path
#      when "arts_admin"
#        redirect_to new_organization_with_token_path(:user_token => new_user.confirmation_token)
#      end
      redirect_to home_path
    else
      render :action => :new
    end
  end

  def edit
#    oauth.set_callback_url(twitter_user_url(user))
#    session[:oauth_secret] = oauth.access_token.secret
  end

  def update
#    if user.update_attributes(params[:user])
#      flash[:settings_update] = 'Settings Updated Successfully'
#      redirect_to edit_user_path
#    else
#      render :action => :edit
#    end
  end




end
