class SignsController < ApplicationController

  def index
    @signs = Sign.all
    @signs.parent_user = current_user
  end

  def show
    @signs = Sign.find(params[:id])
    @signs.parent_user = current_user
  end

  def show
    @signs = Sign.find(params[:id])
    @signs.parent_user = current_user
  end

  def new
    @sign = Sign.new
  end

  def create
    @sign = Sign.new(sign_params)
    @signs.parent_user = current_user
    @sign.save
  end

  def update
    @sign = Sign.find(params[:id])
    @signs.parent_user = current_user
    @sign.update(sign_params)
  end

  def signed?
    signed.valid?
  end

  private
    def sign_params
      params.require(:sign).permit(:document_name, :signed, :classroom_id)
    end
end
