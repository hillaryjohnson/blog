class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :title
      t.string :author
      t.text :body
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
