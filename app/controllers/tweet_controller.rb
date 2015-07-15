class TweetController < ApplicationController
  def input
  end

  def update
    if signed_in?
      client = Twitter::REST::Client.new do |config|
        config.consumer_key         = "tCJouA7Y1UFVp8W21UzkzxNPv"
        config.consumer_secret      = "mn5TOAwxYZJYe9yezybteDMgeqnXCb14VtQDfWDBHdHBBToREp"
        config.access_token         = session[:oauth_token]
        config.access_token_secret  = session[:oauth_token_secret]
      end
      client.update(params[:message] + "test")
      @result = :success
    else
      @result = :not_signed_in
    end
  end
end
