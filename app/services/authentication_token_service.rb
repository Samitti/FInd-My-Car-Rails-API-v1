class AuthenticationTokenService
  def self.encode_token(payload)
    JWT.encode(payload, 's3cr3t')
  end

  def self.auth_header(headers)
    @ext_header = headers
  end
  
  def self.decoded_token
    if @ext_header
      token = @ext_header.split(' ')[1]
      begin
        JWT.decode(token, 's3cr3t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end
  
  def self.logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end
end
