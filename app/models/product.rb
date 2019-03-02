class Product < ApplicationRecord
	validates :capacity, inclusion: { in: ["Fût 20L", "Fût 30L", "Btl 0,5L", "Btl 0,7L", "Btl 1L", "Btl 1,5L", "Btl 4,5L"]}
end