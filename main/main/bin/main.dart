class Song {
  String title;
  String artist;
  int durationInSeconds;

  Song({required this.title, required this.artist, required this.durationInSeconds});
}

class Playlist {
  String name;
  List<Song> songs;

  Playlist({required this.name, required this.songs});

  int get totalDurationInSeconds {
    return songs.fold(0, (sum, song) => sum + song.durationInSeconds);
  }

  void sortByArtist() {
    songs.sort((a, b) => a.artist.compareTo(b.artist));
  }
}

class MusicFestival {
  String name;
  List<Playlist> stages;

  MusicFestival({required this.name, required this.stages});

  int get totalDurationInSeconds {
    return stages.fold(0, (sum, stage) => sum + stage.totalDurationInSeconds);
  }

  void printRandomSongs() {
    print("Random Songs:");
    for (var stage in stages) {
      print("${stage.name}: ${stage.songs.first.title} by ${stage.songs.first.artist} (${stage.songs.first.durationInSeconds} seconds)");
    }
  }

  void printPlaylistsSortedByArtist() {
    for (var stage in stages) {
      print("${stage.name} playlist sorted by artist:");
      print("Playlist: ${stage.name}");
      stage.sortByArtist();
      for (var song in stage.songs) {
        print("${song.title} by ${song.artist} (${song.durationInSeconds} seconds)");
      }
    }
  }
}

void main() {
  // Creating songs
  final song1 = Song(title: "Hype Boy", artist: "NEWJEANS", durationInSeconds: 179);
  final song2 = Song(title: "Ditto", artist: "NEWJEANS", durationInSeconds: 186);
  final song3 = Song(title: "ETA", artist: "NEWJEANS", durationInSeconds: 152);
  final song4 = Song(title: "Bubble Gum", artist: "NEWJEANS", durationInSeconds:200);
  final song5 = Song(title: "How Sweet", artist: "NEWJEANS", durationInSeconds: 201);
  final song6 = Song(title: "Supernatural", artist: "NEWJEANS", durationInSeconds: 191);

  final song7 = Song(title: "Saan", artist: "MAKI", durationInSeconds: 207);
  final song8 = Song(title: "Maharani", artist: "ALAMAT", durationInSeconds: 211);
  final song9 = Song(title: "Day and Night", artist: "ALAMAT", durationInSeconds: 205);
  final song10 = Song(title: "I Feel Good", artist: "BINI", durationInSeconds: 228);
  final song11 = Song(title: "Sining", artist: "DIONELA", durationInSeconds:200);
  final song12 = Song(title: "Karera", artist: "BINI", durationInSeconds: 269);
  final song13 = Song(title: "Hoodie", artist: "DIONELA", durationInSeconds: 171);

  final song14 = Song(title: "Me Myself and I", artist: "BABYMONSTER ASA", durationInSeconds: 124);
  final song15 = Song(title: "Astronaut in the Ocean", artist: "BABYMONSTER RUKA", durationInSeconds: 122);
  final song16 = Song(title: "BatterUp", artist: "BABYMONSTER", durationInSeconds: 187);
  final song17 = Song(title: "Like That", artist: "BABYMONSTER", durationInSeconds: 168);
  final song18= Song(title: "Sheesh", artist: "BABYMONSTER", durationInSeconds:170);
  final song19 = Song(title: "Beautiful Scar", artist: "BABYMONSTER", durationInSeconds: 185);
  final song20 = Song(title: "Forever", artist: "BABYMONSTER", durationInSeconds: 213);


  // Create playlists
  final mainStage = Playlist(
      name: "Main Stage",
      songs: [
        song1,
        song2,
        song3,
        song4,
        song5,
        song6
      ]
  );
  final indieStage = Playlist(
      name: "Indie Stage",
      songs: [
        song7,
        song8,
        song9,
        song10,
        song11,
        song12,
        song13
      ]
  );
  final electronicStage = Playlist(
      name: "Electronic Stage",
      songs: [
        song14,
        song15,
        song16,
        song17,
        song18,
        song19,
        song20
      ]
  );

  // Create music festival
  final musicFestival = MusicFestival(name: "Total Festival", stages: [mainStage, indieStage, electronicStage]);

  // Print total festival duration
  print("Total Festival Duration: ${musicFestival.totalDurationInSeconds} seconds");

  // Print random songs
  musicFestival.printRandomSongs();

  // Print playlists sorted by artist
  musicFestival.printPlaylistsSortedByArtist();

}