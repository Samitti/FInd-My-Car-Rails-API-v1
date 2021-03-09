class ApplicationController < ActionController::API
  before_action :authorized  
  
  def auth_header_top
    request.headers['Authorization']
  end

  def authorized
    AuthenticationTokenService.auth_header(auth_header_top)
    render json: { message: 'Please log in' }, status: :unauthorized unless AuthenticationTokenService.logged_in_user
  end

end