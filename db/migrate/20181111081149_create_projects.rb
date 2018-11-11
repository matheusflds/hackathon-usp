class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.decimal :investments
      t.string :integrants
      t.string :link
      t.string :status
      t.string :notes
      t.integer :progress
      t.decimal :invested
      t.string :notes

      t.integer :company_id
      t.integer :department_id
    end
  end
end
