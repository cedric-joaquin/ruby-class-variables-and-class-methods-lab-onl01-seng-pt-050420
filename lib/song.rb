class Song
    attr_reader :song_title, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(song_title, artist, genre)
        @song_title = song_title
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end 

    def name
        @song_title
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        self.genres.each do |genre|
            genre_count["#{genre}"] = @@genres.count(genre)
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        self.artists.each do |artist|
            artist_count["#{artist}"] = @@artists.count(artist)
        end
        artist_count
    end

end

