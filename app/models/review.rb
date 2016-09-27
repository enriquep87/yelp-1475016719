class Review < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :foreign_key => "reviews_id",
             :dependent => :destroy

  belongs_to :user

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
