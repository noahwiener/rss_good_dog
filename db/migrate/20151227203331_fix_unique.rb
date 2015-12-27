class FixUnique < ActiveRecord::Migration
  def change
    remove_index :articles, :url
    add_index :articles, :url
    # removing uniqueness constraint, so multiple users can save same article
  end
end
