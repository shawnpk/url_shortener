Rails.application.routes.draw do
  get '/short_link', to: 'shorten_urls#create', as: :create_short_link
  get '/:short_link',     to: "shorten_urls#show",   as: "redirect_link"
end
