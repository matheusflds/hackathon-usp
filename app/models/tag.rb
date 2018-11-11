class Tag < ApplicationRecord
  has_and_belongs_to_many :company
  has_and_belongs_to_many :company_proposals
  has_and_belongs_to_many :department
  has_and_belongs_to_many :department_proposals
end
