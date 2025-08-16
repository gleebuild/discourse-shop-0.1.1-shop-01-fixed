class Admin::ProductsController < Admin::AdminController
  requires_plugin ::DiscourseShop::PLUGIN_NAME

  def index
    render_json_dump(ShopProduct.all)
  end

  def edit
    product = ShopProduct.find(params[:id])
    render_json_dump(product)
  end

  def create
    product = ShopProduct.create!(product_params)
    render_json_dump(product)
  end

  def update
    product = ShopProduct.find(params[:id])
    product.update!(product_params)
    render_json_dump(product)
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :video_url, specs: [], images: [])
  end
end
