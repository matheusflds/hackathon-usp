module Company::ProposalsHelper
  def price_rounded
    number_with_precision(@company_proposal.investments, precision: 2).to_s.gsub('.', ',')
  end
end
