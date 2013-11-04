json.array!(@books) do |book|
  json.extract! book, :name, :full_title, :author, :publisher, :version, :isbn, :date_published, :original_price, :sale_price, :cover_pic, :tags, :popularity, :time_added, :description, :in_stock, :style, :publication_city
  json.url book_url(book, format: :json)
end