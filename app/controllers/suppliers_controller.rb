class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(suppliers_params)
    if @supplier.save
      redirect_to suppliers_path
    else
      render :new
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.delete
    redirect_to suppliers_path
  end

  private

  def suppliers_params
    params.require(:supplier).permit(:name, :email, :phone)
  end
end
