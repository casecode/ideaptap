json.array!(@ideas) do |idea|
  json.extract! idea, :id, :title, :short_desc, :long_desc, :idea_support_url, :category, :coffer
  json.url idea_url(idea, format: :json)
end
