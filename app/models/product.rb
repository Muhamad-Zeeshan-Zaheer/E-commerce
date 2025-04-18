class Product < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    [ "description", "name", "price"]
  end
end
