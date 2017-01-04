class Food < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :foodvenues,
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :foodvenues,
             :source => :venue

  # Validations

end
