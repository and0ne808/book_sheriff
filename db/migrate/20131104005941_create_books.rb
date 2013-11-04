class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :full_title
      t.string :author
      t.string :publisher
      t.decimal :version
      t.string :isbn
      t.date :date_published
      t.string :original_price
      t.string :sale_price
      t.string :cover_pic
      t.string :tags
      t.integer :popularity
      t.timestamp :time_added
      t.text :description
      t.integer :in_stock
      t.string :style
      t.string :publication_city

      t.timestamps
    end
  end
end
