class Project < ApplicationRecord
  belongs_to :company
  belongs_to :department

  has_many :project_updates
end
