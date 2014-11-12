class AddAttributesToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :first_name, :string
    add_column :authors, :last_name, :string
    add_column :authors, :life_status, :string
    add_column :authors, :book_id, :integer
  end
end
