class Servant < ApplicationRecord
  belongs_to :sclasses, optional: true
  belongs_to :attris, optional: true
end
