class DepartmentProposal < ApplicationRecord
  has_and_belongs_to_many :tags
  belongs_to :department
  belongs_to :company, optional: true
end
