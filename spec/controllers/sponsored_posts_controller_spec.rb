require 'rails_helper'

RSpec.describe SponsoredPostsController, type: :controller do

  let(:sponsoredpost){ SponsoredPost.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 1)}

  describe "GET #show" do
    it "returns http success" do
      get :show, {id: sponsoredpost.id}
      expect(response).to have_http_status(:success)
    end

    it "renders #show view" do
      get :show, {id: sponsoredpost.id}
      expect(response).to render_template :show
    end

    it "assigns sponsoredpost to @sponsoredpost" do
      get :show, {id: sponsoredpost.id}
      expect(assigns(:sponsoredpost)).to eq(sponsoredpost)
    end

  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
