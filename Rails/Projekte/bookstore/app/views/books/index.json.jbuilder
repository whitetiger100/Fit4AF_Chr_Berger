json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :description, :published, :price
  json.url book_url(book, format: :json)
end
