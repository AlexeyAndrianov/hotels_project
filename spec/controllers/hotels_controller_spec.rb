require 'rails_helper'

describe HotelsController, :type => :controller do
  it "should show all hotels with #index" do
  end
  context 'admin' do
    describe 'GET #new' do
      let(:hotel) { FactoryBot.build(:hotel) }
      let(:admin_user) { FactoryBot.build(:admin_user) }

      it "should allow to create new hotel" do
        get :new
        binding.pry
        expect(assigns(:hotel)).to be_a_new(Hotel)
      end
    end
  end
  context 'not admin' do
    describe 'GET #new' do
      regular_user = FactoryBot.build(:regular_user)

      it "should not allow to create new hotel" do
        get :new
        expect(assigns(:hotel)).to_not be_a_new(Hotel)
      end
    end
  end
end
