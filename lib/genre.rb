class Genre
    attr_accessor :name
    @@all = []

    def initialize(genre)
        @name = genre
        @@all << self
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.map {|song| song.artist}
    end

    def self.all
        @@all
    end


end