Rails.application.routes.draw do
  get '/short_link', to: 'shorten_urls#create', as: :create_short_link
end
