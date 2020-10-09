class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.date :date_published
      t.date :date_due
      t.integer :teams_id

      t.timestamps
    end
  end
end
