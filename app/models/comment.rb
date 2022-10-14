class Comment < ApplicationRecord
  include Visible

  belongs_to :subscription
end
