class ShortenUrlsController < ApplicationController
  include ShortenUrlActions

  def show
    url = ShortenUrl.find_by(short_link: params[:short_link])

    if url
      url.save
      redirect_to url.body, status: :moved_permanently
    else
      render json: nil, status: :no_content
    end
  end

  def create
    render json: shorten_link(params[:url], params[:user_id])
  end
end
