class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :rest_tags,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
