class Request < ApplicationRecord
  validates_presence_of :customer_id
  validates_presence_of :vendor_id
  validates_presence_of :status
  validates_inclusion_of :status, in: %w( pending approved rejected ),
                                  message: "{{value}} is not a valid status"
  validates_presence_of :isExpired
end
