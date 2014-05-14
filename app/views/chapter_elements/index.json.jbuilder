json.array!(@chapter_elements) do |chapter_element|
  json.extract! chapter_element, :id, :title, :description, :position
  json.url chapter_element_url(chapter_element, format: :json)
end
