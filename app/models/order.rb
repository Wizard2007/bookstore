class Order < ApplicationRecord
  has_one: user, optional: true
end
