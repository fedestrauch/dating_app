class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :sex, :age])
  end

  private
  def after_sign_up_path_for(resource)
    flash[:notice] = "Hello #{resource.name}"
    super(resource)
  end
end
