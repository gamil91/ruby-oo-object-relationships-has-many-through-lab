class Artist

    @@all = []
    attr_accessor :name, 
    
    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        Song.all.collect do |song|
          song.genre if song.artist == self
        end
    end


end