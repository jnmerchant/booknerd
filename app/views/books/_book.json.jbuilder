json.extract! book, :id, :title, :author, :is_read, :library_id, :created_at, :updated_at
json.url book_url(book, format: :json)