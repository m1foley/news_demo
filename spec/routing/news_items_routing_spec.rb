require "spec_helper"

describe NewsItemsController do
  describe "routing" do
    it "routes to #search" do
      get("/news_items/search").should route_to("news_items#search")
    end
  end
end
