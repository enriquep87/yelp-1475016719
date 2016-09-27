class Tag < ApplicationRecord
  # Direct associations

  has_many   :rest_tags,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
