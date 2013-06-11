class NewsItemsController < ActionController::API
  def search
    stub_json = {a:1}
    render :json => stub_json
  end
end
