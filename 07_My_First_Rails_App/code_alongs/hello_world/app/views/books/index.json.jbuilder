json.array!(@books) do |book|
  json.extract! book, :title, :des, :author
  json.url book_url(book, format: :json)
end
