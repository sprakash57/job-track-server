class Subscription < ApplicationRecord
    validates :title, presence: true
    validates :price, presence: true
end
