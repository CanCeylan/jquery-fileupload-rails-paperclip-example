class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :tag_id
      t.integer :upload_id

      t.timestamps
    end
  end
end
