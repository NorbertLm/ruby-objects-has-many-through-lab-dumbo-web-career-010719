class Patient
    attr_reader :name
    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(self, date, doctor)
    end

    def appointments
        Appointment.all.select {|appoint| appoint.patient == self}
    end

    def doctors
        appointments.map {|appoint| appoint.doctor}
    end

    def self.all
        @@all
    end

end
