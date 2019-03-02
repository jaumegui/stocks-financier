class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@suppliers = Supplier.all
		@capacity = ["Fût 20L", "Fût 30L", "Btl 0,5L", "Btl 0,7L", "Btl 1L", "Btl 1,5L", "Btl 4,5L"]
		@product = Product.new
	end

	def create
		@product = Product.new(products_params)
		if @product.save
			redirect_to products_path
		else
			render :new
		end
	end

	private

	def products_params
		params.require(:product).permit(:name, :capacity, :supplier_id, :full_stock)
	end
end
