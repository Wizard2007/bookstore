class Order < ApplicationRecord
  belong_to :user, optional: true
end
