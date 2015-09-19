json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :sobrenome, :telefone, :login, :senha
  json.url paciente_url(paciente, format: :json)
end
