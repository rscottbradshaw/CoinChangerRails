class HomeController < ApplicationController
  require 'changer'

  def index
    @changer = ::CoinChanger.new.make_change(params[:amount])
  end
end
