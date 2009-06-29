class CreateDesigns < ActiveRecord::Migration
  def self.up
    create_table :designs do |t|
      t.string :title
      t.string :title_url
      t.string :image_url
      t.string :caption
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :designs
  end
end
