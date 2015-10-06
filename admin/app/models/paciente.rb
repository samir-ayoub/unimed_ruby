class Paciente < ActiveRecord::Base

	has_many :visitas
end
