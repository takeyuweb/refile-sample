class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :album, index: true, foreign_key: true
      t.string :file_id
      t.string :file_filename
      t.integer :file_size
      t.string :file_content_type

      t.timestamps null: false
    end
  end
end
