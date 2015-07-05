class StoreMetadataToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :file_filename, :string
    add_column :uploads, :file_size, :integer
    add_column :uploads, :file_content_type, :string
  end
end
