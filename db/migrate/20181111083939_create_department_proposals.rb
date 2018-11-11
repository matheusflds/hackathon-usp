class CreateDepartmentProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :department_proposals do |t|
      t.string :name
      t.string :description
      t.decimal :investments
      t.string :integrants
      t.string :link
      t.string :status
      t.string :notes
      t.decimal :invested

      t.integer :department_id
    end
  end
end
