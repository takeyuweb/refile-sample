json.array!(@uploads) do |upload|
  json.extract! upload, :id, :name
  json.url upload_url(upload, format: :json)
end
