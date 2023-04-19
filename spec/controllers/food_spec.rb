require 'rails_helper'
require 'devise'

RSpec.describe FoodsController, type: :controller do
  describe 'GET #index' do
    context 'when user is authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:food1) { FactoryBot.create(:food, user: user) }
      let(:food2) { FactoryBot.create(:food, user: user) }

      before do
        sign_in user
        get :index, params: { user_id: user.id }
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @foods' do
        expect(assigns(:foods)).to match_array([food1, food2])
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
      let(:food) { FactoryBot.create(:food, user: user) }

      before do
        sign_in user
        get :show, params: { user_id: user.id, id: food.id }
      end

      it 'returns a success response' do
        expect(response).to be_successful
      end

      it 'assigns @food' do
        expect(assigns(:food)).to eq(food)
      end

      it 'renders the show template' do
        expect(response).to render_template(:show)
      end
    end

    context 'when user is not authenticated' do
      let(:user) { FactoryBot.create(:user) }
      let(:food) { FactoryBot.create(:food, user: user) }

      before do
        get :show, params: { user_id: user.id, id: food.id }
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
