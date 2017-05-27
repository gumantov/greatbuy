class Product < ApplicationRecord
  searchkick word_start: [:name, :sku]
end
