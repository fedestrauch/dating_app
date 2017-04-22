class RenameColumnInDislikes < ActiveRecord::Migration[5.0]
  def change
    rename_column :dislikes, :date_apps_id, :date_app_id
  end
end
