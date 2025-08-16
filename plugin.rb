# frozen_string_literal: true
# name: discourse-shop-0.1.1-shop-01
# about: Discourse Shop Plugin with Products, Coupons, Orders
# version: 0.1.1
# authors: GleeBuild + ChatGPT

enabled_site_setting :shop_enabled

after_initialize do
  module ::DiscourseShop
    PLUGIN_NAME ||= "discourse-shop"
  end

  # 路由
  Discourse::Application.routes.append do
    namespace :admin, constraints: StaffConstraint.new do
      get "/products/list" => "products#index"
      get "/products/:id/edit" => "products#edit"
      post "/products/create" => "products#create"
      put "/products/:id" => "products#update"
    end
  end
end
