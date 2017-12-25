json.extract! book, :id, :title, :author, :publisher_id, :shop_id, :sold, :created_at, :updated_at
json.url book_url(book, format: :json)
