class CreateDateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :date_apps do |t|
      t.string :name
      t.string :sex
      t.text :dislikes
      t.integer :age

      t.timestamps
    end
  end
end
