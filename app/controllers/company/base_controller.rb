class Company::BaseController < ApplicationController
  layout 'company'

  def current_company
    Company.first || Company.create(name: 'RedBull', email: 'red@bull.com', phone: '190')

  def company
    Company.first
  end
end
