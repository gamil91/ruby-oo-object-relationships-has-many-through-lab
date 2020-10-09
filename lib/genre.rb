require 'pry'

class Genre

@@all = []

def self.all
    @@all
end

attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.collect do |song|
             if song.genre == self
                song
             end
        end
    end

    def artists
        Song.all.collect do |song|
            if song.genre == self
                song.artist
            end
        end
    end



end