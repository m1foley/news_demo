class NewsItemsController < ActionController::API
  before_filter :ensure_referer

  def search
    stub_json = {stubbed:1}
    render :json => stub_json
  end

  private

  def ensure_referer
    referer = request.referer
    raise Exceptions::InvalidReferer, 'Missing referer' if referer.blank?
  end
end
