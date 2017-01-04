class Food < ApplicationRecord
  # Direct associations

  has_many   :foodvenues,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
