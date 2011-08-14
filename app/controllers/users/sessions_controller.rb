class Users::SessionsController < Devise::SessionsController

  layout "without_slider_product_list"

  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => "new")
    set_flash_message :notice, :signed_in
    sign_in_and_redirect(resource_name, resource)
  end

  def facebook_sign_in
    if current_user
      unless current_user.set_facebook_uid(facebook_session.user.uid)
        flash[:alert] = "The Facebook account is already linked with another user"
      end
      redirect_to edit_user_path
    else
      sign_in
    end
  end

  protected

  def sign_in
#    if resource = authenticate(resource_name)
#      set_flash_message :notice, :signed_in
#      case params[:new_account_type]
#      when "patron"
#        sign_in_and_redirect(thank_you_user_path, resource, user_signed_in?)
#      when "arts_admin"
#        sign_in_and_redirect(new_organization_path, resource, user_signed_in?)
#      else
#        sign_in_and_redirect(resource_name, resource, true)
#      end
#    else
#      set_now_flash_message :alert, (warden.message || :invalid)
#      clean_up_passwords(build_resource)
#      render_with_scope :new
#    end
    render_with_scope :new
  end

end
