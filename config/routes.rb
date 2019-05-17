Rails.application.routes.draw do
  post '/short_link', to: 'shorten_urls#create', as: :create_short_link
  get '/:short_link', to: "shorten_urls#show",   as: :redirect_link
end
