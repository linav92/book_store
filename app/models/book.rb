class Book < ApplicationRecord
    belongs_to :user, optional: true
    enum status: [:available, :reserved, :payed]
end
