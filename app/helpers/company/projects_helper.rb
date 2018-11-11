module Company::ProjectsHelper
  def translate_status(status)
    status == "pending" ? "Pendente" : "Aceito"
  end

  def preview_description(description)
    "#{description.first(50)}[...]"
  end 
end
