class DropAuthoredBooks < ActiveRecord::Migration
  def up
    drop_table :authored_books
  end

  def down
    create_table :authored_books do |t|
      t.integer :author_id
      t.integer :book_id

      t.timestamps        
    end
  end
end
