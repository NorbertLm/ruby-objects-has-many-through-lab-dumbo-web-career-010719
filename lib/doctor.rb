class Doctor
    attr_reader :name
    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select {|appoint| appoint.doctor == self}
    end

    def patients
        appointments.map {|appoint| appoint.patient}
    end

    def self.all
        @@all
    end

end
