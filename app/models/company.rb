class Company < ApplicationRecord
    has_many :employees 
    has_many :offices

    def buildings 
        Office.all.select do |office|
            office.company == self 
        end
    end 
     def rent_cost 
       buildings.map do  |office| 
        office.building
       end.map{ |building| building.rent_per_floor}.sum 
     end 
end
