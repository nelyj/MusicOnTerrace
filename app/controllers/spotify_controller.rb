  class SpotifyController < ApplicationController
    def index
    end

    def sessions
      accounts = Spotify::Accounts.new
      url = accounts.authorize_url({
        scope: %w(
          user-read-private
          user-read-email
          user-read-recently-played
          user-modify-playback-state
          streaming
          app-remote-control
        ).join(' ')
      })

      redirect_to url
  end

  def redirect
    binding.pry
    @session = accounts.exchange_for_session(accounts,params[:code])
  end

  private

  def accounts
    @accounts ||= Spotify::Accounts.new
  end
end
