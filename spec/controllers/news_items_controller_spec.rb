require 'spec_helper'

describe NewsItemsController do

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NewsItemsController. Be sure to keep this updated too.
  def valid_session
    { 'HTTP_REFERER' => 'http://www.my-ajax-site.com' }
  end

  describe "GET search" do
    context "with valid session" do
      it "responds with a list of news items" do
        get :search, {:q => 'barack%20obama'}, valid_session
        response.should be_success
        response.headers['Content-Type'].should include('application/json')

        expected_json = {a:1}.to_json
        response.body.should eq(expected_json)
      end
    end
    context "missing referer" do
      it "returns an error" do
        pending "todo"
        get :search, {:q => 'barack%20obama'}, {}
        response.should be_error
      end
    end
  end
end
