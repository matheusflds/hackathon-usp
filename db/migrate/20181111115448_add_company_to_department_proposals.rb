class AddCompanyToDepartmentProposals < ActiveRecord::Migration[5.2]
  def change
    add_column :department_proposals, :company_id, :integer
  end
end
