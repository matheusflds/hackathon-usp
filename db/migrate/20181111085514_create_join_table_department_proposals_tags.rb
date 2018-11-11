class CreateJoinTableDepartmentProposalsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :department_proposals, :tags do |t|
      t.index [:department_proposal_id, :tag_id], name: 'department_proposal_tag_id'
      t.index [:tag_id, :department_proposal_id], name: 'tag_department_proposal_id'
    end
  end
end
