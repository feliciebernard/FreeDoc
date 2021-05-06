# This file should contain all the record creation needed to seed the database with its default values.
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
City.destroy_all


10.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    zip_code: Faker::Address.zip_code
    )
end

10.times do
  patient = Patient.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name
    )
end

10.times do
  city = City.create( 
    city_name: Faker::Address.city
    )
end

10.times do
  appointment = Appointment.create!(
    date: Faker::Date.between(from: 10.days.ago, to: Date.today)
    )
end

10.times do
  specialty = Specialty.create!(
    spacialty_name: ["Allergy and immunology", "Anesthesiology", "Dermatology", "Diagnostic radiology", "Emergency medicine", "Family medicine", "Internal medicine", "Medical genetics", "Neurology", "Nuclear medicine", "Obstetrics and gynecology", "Ophthalmology", "Pathology", "Pediatrics", "Physical medicine and rehabilitation", "Preventive medicine", "Psychiatry", "Radiation oncology", "Surgery", "Urology"].sample
      )
end
