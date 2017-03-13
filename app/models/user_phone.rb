class UserPhone < ApplicationRecord
  belong_to :user, optional: true
end
