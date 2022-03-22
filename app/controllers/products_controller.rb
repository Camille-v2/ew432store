class ProductsController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]  
  
  def index
    if session[:cart].nil?
      session[:cart] = []
    end
    @products = Product.all
    @cart = session[:cart]
  end

  def list
    if session[:cart].nil?
      session[:cart] = []
    end
    @products = Product.all
    render json: @products
    @cart = session[:cart]
  end
  
  def show
    if session[:cart].nil?
      session[:cart] = []
    end
    @product = Product.find(params[:id])
    @cart = session[:cart]
  end

  def featured
    if session[:cart].nil?
      session[:cart] = []
    end
    @product = Product.all
    @cart = session[:cart]
  end

  def new
    if session[:cart].nil?
      session[:cart] = []
    end
    @product = Product.new
    @cart = session[:cart]
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
  
    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def buy
    if session[:cart].nil?
      session[:cart] = []
    end
  @product = Product.create[params[:product]]
  product = Product.find(params[:id])
  product.decrement :stock, 1
  session[:cart].append(product)
  product.update(stock: product.stock)
  redirect_to :root
  end

  def checkout
    @cart = session[:cart]
    session[:cart] = []
    if session[:cart].nil?
      session[:cart] = []
    end
    @products = Product.all
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
