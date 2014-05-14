json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :title, :description, :position
  json.url chapter_url(chapter, format: :json)
end
