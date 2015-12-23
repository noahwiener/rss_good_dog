class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :url, null: false

      t.timestamps null: false
    end

    add_index :articles, :title
    add_index :articles, :url, unique: true

  end
end
