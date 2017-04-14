require 'rails_helper'

RSpec.describe CatPlayController, type: :controller do

  describe "GET #cp_home" do
    before(:each) { get :cp_home } 

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the layout; application" do 
      expect(response).to render_template(layout: :application) 
    end 

    it "renders the template; cp_home" do 
      expect(response).to render_template(:cp_home) 
    end 
  end

  describe "GET #cp_journal" do
    before(:each) { get :cp_journal } 

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the layout; application" do 
      expect(response).to render_template(layout: :application) 
    end 

    it "renders the template; cp_journal" do 
      expect(response).to render_template(:cp_journal) 
    end 
  end

  describe "GET #cp_technical" do
    before(:each) { get :cp_technical } 

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "renders the layout; application" do 
      expect(response).to render_template(layout: :application) 
    end 

    it "renders the template; cp_technical" do 
      expect(response).to render_template(:cp_technical) 
    end 
  end

end
