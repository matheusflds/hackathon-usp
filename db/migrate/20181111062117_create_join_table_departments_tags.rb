class CreateJoinTableDepartmentsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :departments, :tags do |t|
      t.index [:department_id, :tag_id]
      t.index [:tag_id, :department_id]
    end
  end
end
