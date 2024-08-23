void main() {
  // Creating song instances
  Song track1 = Song('YASAP BOIS', 'RuiijiKun');
  Song track2 = Song('Salabatkalabasaokra Gang n Nem', 'Downtown Q');
  Song track3 = Song('2000s [ALL-STAR]', 'NO LIMIT 4L');
  Song track4 = Song('Pag Kamiy Nasa Taas', 'Bugoy na Koykoy and Mike Swift');
  Song track5 = Song('Sarili Ko', 'Bugoy na Koykoy');

  Song track6 = Song('Who Will Carry On', 'Natalie Cole');
  Song track7 = Song('Im In Love Again', 'Phil Hurtt');
  Song track8 = Song('Only Faith And Hope', 'JOB Orquestra');
  Song track9 = Song('Ive Got To Find A Way', 'The Halleluiah Chorus');
  Song track10 = Song('Stop, Look, Listen to Your Heart', 'The Howard Lemon Singers');

  Song track11 = Song('Icee', 'Eli');
  Song track12 = Song('BREAK FROM LAGUNA', 'Soulja444');
  Song track13 = Song('bahala na (draft)', 'Rb Slatt');
  Song track14 = Song('sugar (cover)', '25hearts');
  Song track15 = Song('Downtown Baby (Bartender Remix)', 'Downtown Q');

  // Creating playlist instances
  Playlist playlist1 = Playlist('THE HARDWAY PLAYLIST');
  Playlist playlist2 = Playlist('SOUL PLAYLIST');
  Playlist playlist3 = Playlist('UNDERGROUND PLAYLIST');

  // Adding songs to playlists
  playlist1.addSong(track1);
  playlist1.addSong(track2);
  playlist1.addSong(track3);
  playlist1.addSong(track4);
  playlist1.addSong(track5);

  playlist2.addSong(track6);
  playlist2.addSong(track7);
  playlist2.addSong(track8);
  playlist2.addSong(track9);
  playlist2.addSong(track10);

  playlist3.addSong(track11);
  playlist3.addSong(track12);
  playlist3.addSong(track13);
  playlist3.addSong(track14);
  playlist3.addSong(track15);

  // Creating a music festival and adding playlists to it
  MusicFestival festival = MusicFestival('KESOINO BRAIN FESTIVAL');
  festival.addStage(playlist1);
  festival.addStage(playlist2);
  festival.addStage(playlist3);

  // Displaying details of the music festival
  festival.displayFestivalDetails();
}

// Song class represents a single track with a title and artist.
class Song {
  String title;
  String artist;

  Song(this.title, this.artist);

  // Displays track details.
  void displayDetails() {
    print('$title by $artist');
  }
}

// Playlist class represents a collection of tracks.
class Playlist {
  String name;
  List<Song> songs = [];

  Playlist(this.name);

  // Adds a song to the playlist.
  void addSong(Song song) {
    songs.add(song);
  }

  // Displays all songs in the playlist.
  void displaySongs() {
    print('Playlist: $name');
    for (var song in songs) {
      song.displayDetails();
    }
  }
}

// MusicFestival class represents a music festival with multiple playlists (stages).
class MusicFestival {
  String name;
  List<Playlist> stages = [];

  MusicFestival(this.name);

  // Adds a playlist (stage) to the music festival.
  void addStage(Playlist stage) {
    stages.add(stage);
  }

  // Displays all stages and their songs in the music festival.
  void displayFestivalDetails() {
    print('Music Festival: $name');
    for (var stage in stages) {
      stage.displaySongs();
    }
  }
}