class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :dependent => :destroy

  belongs_to :city

  # Indirect associations

  # Validations

end
