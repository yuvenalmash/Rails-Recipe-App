require 'rails_helper'
require 'devise'

RSpec.describe Recipes, type: :controller do
  describe 'GET #index' do
    context 'when user is authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:recipe1) { FactoryBot.create(:recipe, user: user) }
      let(:recipe2) { FactoryBot.create(:recipe, user: user) }

      before do
        sign_in user
        get :index, params: { user_id: user.id }
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @recipes' do
        expect(assigns(:recipes)).to match_array([recipe1, recipe2])
      end

      it 'renders the index template' do
        expect(response).to render_template(:index)
      end
    end

    context 'when user is not authenticated' do
      let(:user) { FactoryBot.create(:user) }

      before do
        get :index, params: { user_id: user.id }
      end

      it 'redirects to sign in page' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'GET #show' do
    context 'when user is authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:recipe) { FactoryBot.create(:recipe, user: user) }

      before do
        sign_in user
        get :show, params: { user_id: user.id, id: recipe.id }
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @recipe' do
        expect(assigns(:recipe)).to eq(recipe)
      end

      it 'renders the show template' do
        expect(response).to render_template(:show)
      end
    end

    context 'when user is not authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:recipe) { FactoryBot.create(:recipe, user: user) }

      before do
        get :show, params: { user_id: user.id, id: recipe.id }
      end

      it 'redirects to sign in page' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  RSpec.configure do |config|
    config.include Devise::Test::ControllerHelpers, type: :controller
  end
end
