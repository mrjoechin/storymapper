json.extract! story, :id, :title, :story_type, :storymap_id, :created_at, :updated_at
json.url story_url(story, format: :json)
