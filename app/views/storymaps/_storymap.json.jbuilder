json.extract! storymap, :id, :name, :description, :user_id, :created_at, :updated_at
json.url storymap_url(storymap, format: :json)
