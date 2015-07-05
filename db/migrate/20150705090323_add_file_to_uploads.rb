class AddFileToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :file_id, :string
  end
end
