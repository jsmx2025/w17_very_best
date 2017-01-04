class Venue < ApplicationRecord
  # Direct associations

  has_many   :foodvenues,
             :dependent => :destroy

  # Indirect associations

  has_many   :foods,
             :through => :foodvenues,
             :source => :food

  # Validations

end
