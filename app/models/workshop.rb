class Workshop < ApplicationRecord
  belongs_to :city
  belongs_to :location
  belongs_to :person_workshop
end
