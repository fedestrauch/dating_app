class AddImageUrlToTopic < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :img_url, :string
  end
end
