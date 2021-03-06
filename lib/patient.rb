require 'pry'

class Patient

    @@all = []

    def self.all
        @@all
    end 

    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appt| appt.patient == self}
    end

    def doctors
       self.appointments.map{|my_appt| my_appt.doctor}
    end

end