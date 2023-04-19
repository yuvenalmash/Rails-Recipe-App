require 'rails_helper'
require 'devise'

RSpec.describe RecipefoodsController, type: :controller do
  describe 'GET #show' do
    context 'when user is authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:food) { FactoryBot.create(:food, user: user) }
      let(:recipe) { FactoryBot.create(:recipe, user: user) }
      let(:recipefood) { FactoryBot.create(:recipefood, food: food, recipe: recipe) }

      before do
        sign_in user
        get :show, params: { user_id: user.id, recipe_id: recipe.id, id: recipefood.id }
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @recipefood' do
        expect(assigns(:recipefood)).to eq(recipefood)
      end

      it 'renders the show template' do
        expect(response).to render_template(:show)
      end
    end

    context 'when user is not authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:recipe) { FactoryBot.create(:recipe, user: user) }
      let(:recipefood) { FactoryBot.create(:recipefood, recipe: recipe) }

      before do
        get :show, params: { user_id: user.id, recipe_id: recipe.id, id: recipefood.id }
      end

      it 'redirects to sign in page' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'GET #new' do
    context 'when user is authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:recipe) { FactoryBot.create(:recipe, user: user) }

      before do
        sign_in user
        get :new, params: { user_id: user.id, recipe_id: recipe.id }
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @recipefood' do
        expect(assigns(:recipefood)).to be_a_new(Recipefood)
      end

      it 'renders the new template' do
        expect(response).to render_template(:new)
      end
    end

    context 'when user is not authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:recipe) { FactoryBot.create(:recipe, user: user) }

      before do
        get :new, params: { user_id: user.id, recipe_id: recipe.id }
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
