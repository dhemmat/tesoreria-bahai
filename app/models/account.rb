class Account < ActiveRecord::Base
  TYPES=[
    "fondo",
    "entidad",
    "cuenta"
  ].freeze

  validates :name, presence: true
  validates :account_type, inclusion: { in: TYPES,
            message: "%{value} no es un tipo de cuenta válido" }

end
