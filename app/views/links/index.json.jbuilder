json.array!(@links) do |link|
  json.extract! link, :id, :link, :score, :name
  json.url link_url(link, format: :json)
end
