module PatientsHelper
    def consult_status(patient_id)
        consult = Consult.where(:patient_id => patient_id).first
        total_amount = Study.where(:consult_id => consult.id).sum(:amount) unless consult.nil?

        if consult.nil?
            "table-danger"
        elsif consult.amount > total_amount
            "table-warning"
        elsif consult.amount = total_amount
            "table-success"
        end
    end

end
