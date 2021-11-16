class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books, id: false  do |t|
      t.string :b_id,  primary_key: true      
      t.string :b_title
      t.string :author
      t.string :publisher
      t.integer :year

      t.timestamps
    end
  end
end
