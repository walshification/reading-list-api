class AddAttributesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :blurb, :text
    add_column :books, :author_id, :integer
    add_column :books, :published_year, :integer
    add_column :books, :status, :string
  end
end
