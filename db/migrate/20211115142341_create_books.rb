class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :b_id
      t.string :b_title
      t.string :author
      t.string :publisher
      t.string :year

      t.timestamps
    end
  end
end
