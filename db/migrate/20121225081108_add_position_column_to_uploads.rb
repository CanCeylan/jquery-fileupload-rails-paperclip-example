class AddPositionColumnToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :position, :integer
  end
end
