class Company::BaseController < ApplicationController
  layout 'company'

  def company
    Company.first
  end
end
