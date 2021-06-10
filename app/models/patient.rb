class Patient < ApplicationRecord
    has_many :consults
    def full_name
        name + " " + last_name
    end

    def sexo
        if self.gender == 1
            "Masculino"
        else
            "Femenino"
        end
    end

    def edad
        Time.now.to_date - self.birth.to_date
    end
end
