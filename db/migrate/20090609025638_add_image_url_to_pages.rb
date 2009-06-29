class AddImageUrlToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :image_url, :string
  end

  def self.down
    remove_column :pages, :image_url
  end
end
