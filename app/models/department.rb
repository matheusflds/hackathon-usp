class Department < ApplicationRecord
  has_and_belongs_to_many :tags
  has_many :department_proposals
  has_many :projects
end
