class Avaliacao < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :cidade
  belongs_to :lugar
end
