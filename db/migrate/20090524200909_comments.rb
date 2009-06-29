class Comments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
    t.column :blog_id, :integer
    t.column :body, :text
    t.column :author, :string
    
    t.timestamp
    end
  end

  def self.down
    drop_table :blogs
    end
  end

