class AccountsController < ApplicationController
  def index
    @accounts = Account.order(name: :asc)
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    Account.create(account_params)
    redirect_to accounts_path
  end

  def update
    @account = Account.find(params[:id])
    @account.update_attributes(account_params)
    redirect_to accounts_path
  end

  def edit
    @account = Account.find(params[:id])
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to accounts_path
  end

  private

  def account_params
    params.require(:account).permit(:name, :description, :account_type)
  end
end
