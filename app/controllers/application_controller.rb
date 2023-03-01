class ApplicationController < ActionController::Base
  include Pundit::Authorization

  layout :layout_by_resource

  protected

  def after_sign_in_path_for(resource)
    return user_dashboard_path if resource.is_a?(User)

    super
  end

  private

  def layout_by_resource
    return "devise" if devise_controller?

    "application"
  end
end
