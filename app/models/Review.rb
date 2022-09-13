class Review < ActiveRecord::Base
    belongs_to :products
    has_many :users
end