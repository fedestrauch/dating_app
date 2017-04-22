class RenameTopicInDislikes < ActiveRecord::Migration[5.0]
  def change
    rename_column :dislikes, :topics_id, :topic_id
  end
end
