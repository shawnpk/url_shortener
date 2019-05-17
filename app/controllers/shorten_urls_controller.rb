class ShortenUrlsController < ApplicationController
  include ShortenUrlActions

  def create
    render json: shorten_link(params[:url])
  end
end
