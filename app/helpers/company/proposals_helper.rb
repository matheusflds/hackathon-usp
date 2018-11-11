module Company::ProposalsHelper
  def investment_rounded
    number_with_precision(@department_proposal.investments, precision: 2).to_s.gsub('.', ',')
  end
end
