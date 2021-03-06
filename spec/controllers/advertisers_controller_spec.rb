require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe AdvertisersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Advertiser. As you add validations to Advertiser, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {:name => "Test Advertiser"}
  }

  let(:invalid_attributes) {
    {:name => nil}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AdvertisersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all advertisers as @advertisers" do
      advertiser = Advertiser.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:advertisers)).to eq([advertiser])
    end
  end

  describe "GET #show" do
    it "assigns the requested advertiser as @advertiser" do
      advertiser = Advertiser.create! valid_attributes
      get :show, {:id => advertiser.to_param}, valid_session
      expect(assigns(:advertiser)).to eq(advertiser)
    end
  end

  describe "GET #new" do
    it "assigns a new advertiser as @advertiser" do
      get :new, {}, valid_session
      expect(assigns(:advertiser)).to be_a_new(Advertiser)
    end
  end

  describe "GET #edit" do
    it "assigns the requested advertiser as @advertiser" do
      advertiser = Advertiser.create! valid_attributes
      get :edit, {:id => advertiser.to_param}, valid_session
      expect(assigns(:advertiser)).to eq(advertiser)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Advertiser" do
        expect {
          post :create, {:advertiser => valid_attributes}, valid_session
        }.to change(Advertiser, :count).by(1)
      end

      it "assigns a newly created advertiser as @advertiser" do
        post :create, {:advertiser => valid_attributes}, valid_session
        expect(assigns(:advertiser)).to be_a(Advertiser)
        expect(assigns(:advertiser)).to be_persisted
      end

      it "redirects to the created advertiser" do
        post :create, {:advertiser => valid_attributes}, valid_session
        expect(response).to redirect_to(Advertiser.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved advertiser as @advertiser" do
        post :create, {:advertiser => invalid_attributes}, valid_session
        expect(assigns(:advertiser)).to be_a_new(Advertiser)
      end

      it "re-renders the 'new' template" do
        post :create, {:advertiser => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {:name => "My new advertiser name"}
      }

      it "updates the requested advertiser" do
        advertiser = Advertiser.create! valid_attributes
        put :update, {:id => advertiser.to_param, :advertiser => new_attributes}, valid_session
        advertiser.reload
        expect(assigns(:advertiser)[:name]).to eq(new_attributes[:name])
      end

      it "assigns the requested advertiser as @advertiser" do
        advertiser = Advertiser.create! valid_attributes
        put :update, {:id => advertiser.to_param, :advertiser => valid_attributes}, valid_session
        expect(assigns(:advertiser)).to eq(advertiser)
      end

      it "redirects to the advertiser" do
        advertiser = Advertiser.create! valid_attributes
        put :update, {:id => advertiser.to_param, :advertiser => valid_attributes}, valid_session
        expect(response).to redirect_to(advertiser)
      end
    end

    context "with invalid params" do
      it "assigns the advertiser as @advertiser" do
        advertiser = Advertiser.create! valid_attributes
        put :update, {:id => advertiser.to_param, :advertiser => invalid_attributes}, valid_session
        expect(assigns(:advertiser)).to eq(advertiser)
      end

      it "re-renders the 'edit' template" do
        advertiser = Advertiser.create! valid_attributes
        put :update, {:id => advertiser.to_param, :advertiser => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested advertiser" do
      advertiser = Advertiser.create! valid_attributes
      expect {
        delete :destroy, {:id => advertiser.to_param}, valid_session
      }.to change(Advertiser, :count).by(-1)
    end

    it "redirects to the advertisers list" do
      advertiser = Advertiser.create! valid_attributes
      delete :destroy, {:id => advertiser.to_param}, valid_session
      expect(response).to redirect_to(advertisers_url)
    end
  end

end
