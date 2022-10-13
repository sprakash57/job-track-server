class Subscription < ApplicationRecord
    has_many :comments

    validates :title, presence: true
    validates :price, presence: true
end
