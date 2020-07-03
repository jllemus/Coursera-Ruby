class Profile < ActiveRecord::Base
    belongs_to :user
    validate :first_or_last
    validates :gender, :inclusion => {:in => ['male', 'female']}
    validate :prevent

    def first_or_last    
        if first_name.nil? && last_name.nil?   
            errors.add(:first_name, "Specify a first or a last.")    
        end  
    end  

    def prevent 
        if gender == "male" && first_name == "Sue"
            errors.add(:first_name, "This name is not allowed")
        end
    end

    def self.get_all_profiles(min, max)
        self.where("#{:birth_year} BETWEEN ? AND ?", min, max).order(:birth_year)  
    end
end
