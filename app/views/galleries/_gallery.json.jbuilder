json.extract! gallery, :id, :title, :description, :slave, :url, :sort, :image, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
