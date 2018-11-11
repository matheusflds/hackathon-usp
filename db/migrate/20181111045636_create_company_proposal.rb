class CreateCompanyProposal < ActiveRecord::Migration[5.2]
  def change
    create_table :company_proposals do |t|
      t.string :name
      t.string :description
      t.decimal :investments
      t.string :status
      t.string :notes
      t.integer :progress
      t.decimal :invested

      t.integer :company_id
    end
  end
end
