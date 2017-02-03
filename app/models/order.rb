class Order < ApplicationRecord
  belongs_to: product, optimal:true  
  belongs_to: user, optimal:true  
end
