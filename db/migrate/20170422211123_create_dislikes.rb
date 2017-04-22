class CreateDislikes < ActiveRecord::Migration[5.0]
  def change
    create_table :dislikes do |t|
      t.belongs_to :date_apps, foreign_key: true
      t.belongs_to :topics, foreign_key: true

      t.timestamps
    end
  end
end
