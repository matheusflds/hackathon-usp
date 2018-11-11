class CreateJoinTableCompanyProposalsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :company_proposals, :tags do |t|
      t.index [:company_proposal_id, :tag_id]
      t.index [:tag_id, :company_proposal_id]
    end
  end
end
