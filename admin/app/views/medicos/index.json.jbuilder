json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nome, :crm, :telefone
  json.url medico_url(medico, format: :json)
end
