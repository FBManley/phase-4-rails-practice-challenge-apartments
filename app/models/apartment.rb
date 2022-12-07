class Apartment < ApplicationRecord
    has_many :leases, dependent: :destroy
    
end
