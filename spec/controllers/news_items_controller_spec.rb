require 'spec_helper'

describe NewsItemsController do

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NewsItemsController. Be sure to keep this updated too.
  def valid_session
    { }
  end

  describe "GET search" do
    context "with valid session" do
      before :each do
        request.env['HTTP_REFERER'] = 'http://www.my-ajax-site.com'
      end
      it "responds with a list of news items" do
        get :search, {:q => 'barack%20obama'}, valid_session
        response.should be_success
        response.headers['Content-Type'].should include('application/json')

        expected_json = {stubbed:1}.to_json
        response.body.should eq(expected_json)
      end
    end
    context "missing referer" do
      it "raises an exception" do
        expect do
          get :search, {:q => 'barack%20obama'}, valid_session
        end.to raise_error(Exceptions::InvalidReferer)
      end
    end
  end
end
