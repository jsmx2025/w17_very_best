class Food < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :foodvenues,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
