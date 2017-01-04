class Foodvenue < ApplicationRecord
  # Direct associations

  has_many   :verybests,
             :dependent => :destroy

  belongs_to :venue

  belongs_to :food

  # Indirect associations

  # Validations

end
