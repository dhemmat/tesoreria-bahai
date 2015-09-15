require "rails_helper"

RSpec.describe AccountsController do

  describe "GET index" do
    it "assigns @accounts" do
      account = create :account
      get :index
      expect(assigns(:accounts)).to eq([account])
    end

    it "returns accounts in ascending order by name" do
      account_b = create :account, name: 'B'
      account_c = create :account, name: 'C'
      account_a = create :account, name: 'A'

      get :index
      expect(assigns(:accounts)).to eq([account_a, account_b, account_c])
    end
  end

  describe "GET edit/:id" do
    it "assigns @account" do
      account = create :account
      get :edit, id: account.id
      expect(assigns(:account)).to eq(account)
    end
  end
end
