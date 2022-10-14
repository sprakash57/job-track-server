class Subscription < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :price, presence: true
end
