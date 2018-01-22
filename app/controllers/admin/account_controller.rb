class Admin::AccountController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.create(person_params)
    flash[:error] = "Add thanh ccong"
    render "new"
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:account][:id])
    @account.update_attributes(person_params)
    flash[:error] = "Update thanh cong"
    render "edit"
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to admin_list_user_path, :notice => "Deleted post"
  end

  def person_params
    params.require(:account).permit(:email, :password, :status, :role, :name, :password_confirmation)
  end
end
