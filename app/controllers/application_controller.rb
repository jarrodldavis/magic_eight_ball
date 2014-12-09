class ApplicationController < ActionController::API
  include Sorcery::Controller
  include CanCan::ControllerAdditions
  include ActionController::Serialization

  check_authorization

  rescue_from CanCan::AccessDenied do |exception|
    render json: { error: "You cannot #{exception.action} this #{exception.subject.class.name.demodulize.humanize(capitalize: false)}" }, status: :forbidden
  end

  private
  def current_user
    @current_user ||= User.find_by_id(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
