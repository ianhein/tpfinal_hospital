class Consult < ApplicationRecord
  belongs_to :staff
  belongs_to :study

  has_many :patients
end
