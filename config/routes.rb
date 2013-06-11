NewsDemo::Application.routes.draw do
  resources :news_items, :only => {} do
    get :search, :on => :collection
  end
end
#== Route Map
# Generated 2013-06-10
# search_news_items GET /news_items/search(.:format) news_items#search
