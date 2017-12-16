class Item < ApplicationRecord
	has_many :avantages
	accepts_nested_attributes_for :avantages
end
