require 'pry'

class Song
    extend Memorable::ClassMethods
    extend Findable::ClassMethods
    include Memorable::InstanceMethods
    include Paramable::InstanceMethods
    
    attr_accessor :name
    attr_reader :artist

    @@songs = []

    # Here it was the initialize definition

    # Former place definition of #find_by_name
    
    def self.all
        @@songs
    end

    # Here it was the definition of #reset_all and #count
    # that are now defined in Memorable

    def artist=(artist)
        @artist = artist
    end

    # Here it was the to_param definition
end
