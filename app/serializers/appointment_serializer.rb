class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :title, :location, :doctor_id, :patient_id, :notes, :patient

  def patient
    object.patient.name
  end
end
