class Department::BaseController < ApplicationController
  layout 'department'

  def current_department
    Department.first || Department.create(name: 'Poli', email: 'admin@poli.com', phone: '11 9999 9999')
  end
end
