class AddDepartmentToCompanyProposals < ActiveRecord::Migration[5.2]
  def change
    add_column :company_proposals, :department_id, :integer
  end
end
