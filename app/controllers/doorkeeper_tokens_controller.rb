class DoorkeeperTokensController < Doorkeeper::TokensController
  def create
    super
    response_hash = ActiveSupport::JSON.decode(self.response_body[0])
    if strategy.respond_to? :resource_owner
      response_hash['user_id'] = strategy.try(:resource_owner).try(:id)
    elsif strategy.respond_to? :refresh_token
      response_hash['user_id'] = strategy.try(:refresh_token).try(:resource_owner_id)
    end

    self.response_body = ActiveSupport::JSON.encode(response_hash)
  end
end
