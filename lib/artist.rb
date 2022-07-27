require 'pry'

class Artist
    extend Memorable::ClassMethods, Findable::ClassMethods
    include Memorable::InstanceMethods
    include Paramable::InstanceMethods

    attr_accessor :name
    attr_reader :songs

    @@artists = []

    def initialize
        # @@artists << self
        super
        @songs = []
    end

    # Former place definition of #find_by_name

    def self.all
        @@artists
    end

    # Here it was the definition of #reset_all and #count
    # that are now defined in Memorable

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_songs(songs)
        songs.each { |song| add_song(song) }
    end

    # Here it was the to_param definition
end
