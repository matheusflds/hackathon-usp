class CreateProjectUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :project_updates do |t|
      t.string :title
      t.decimal :value
      t.string :subject
      t.string :description

      t.integer :project_id
    end
  end
end
