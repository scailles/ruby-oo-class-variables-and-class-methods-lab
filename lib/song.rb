class Song

    attr_reader :name, :artist, :genre

    @@artists=[]
    @@genres=[]
    @@count=0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << @genre
        @@artists << @artist
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        array=Hash.new(0)
        @@genres.each {|genre| array[genre] +=1}
        array
    end

    def self.artist_count
        array=Hash.new(0)
        @@artists.each {|artist| array[artist] +=1}
        array
    end





end
