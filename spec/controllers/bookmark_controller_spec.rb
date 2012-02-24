require 'spec_helper'

describe BookmarksController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Bookmark" do
        expect {
          post :create, :bookmark => valid_attributes
        }.to change(Bookmark, :count).by(1)
      end
    end
  end

end
