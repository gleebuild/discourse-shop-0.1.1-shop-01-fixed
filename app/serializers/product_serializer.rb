class ProductSerializer < ApplicationSerializer
  attributes :id, :title, :description, :images, :video_url, :specs, :created_at, :updated_at
end
