  class SpotifyController < ApplicationController
    def index
    end

    def sessions
      accounts = Spotify::Accounts.new
      url = accounts.authorize_url({
        scope: "user-read-private user-read-email"
      })
      redirect_to url
  end

  def redirect
    binding.pry
  end
end
