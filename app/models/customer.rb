class Customer < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true, numericality: {only_integer:true}
    validates :media, presence: true
end
