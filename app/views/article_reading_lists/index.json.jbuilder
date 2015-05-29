json.array!(@article_reading_lists) do |article_reading_list|
  json.extract! article_reading_list, :id, :article_id, :reading_list_id, :state, :active
  json.url article_reading_list_url(article_reading_list, format: :json)
end
