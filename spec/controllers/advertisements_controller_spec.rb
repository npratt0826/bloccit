require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do
  
  let(:ad) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_price) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns [ad] to @advertisements" do
      get :index
      expect(assigns(:advertisements)).to eq([ad])
    end
    
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
       get :show, params: { id: ad.id }
       expect(response).to render_template :show
     end
 
     it "assigns my_post to @post" do
       get :show, params: { id: ad.id }
       expect(assigns(:advertisements)).to eq(ad)
     end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
