class Jukebox{
    private User user;
    private Set<CD> cds;
    private CDPlayer cdPlayer;
    private SongSelector ss;

    Jukebox(){}

    void setUser(){}
    Song getCurrentSong(){}
}

class Song{
    attributes;

    getters and setters;
}

class CD{

    private Artist player;
    private Set<Song> songs;

    getters and setters;
}

class Artist{
    private String name;
    private int age;
    ....;

    getters and setters;
}

class CDPlayer{

    private PlayList playList;
    private CD cd;

    CDPlayer(){}

    void playSong(){}

    void randomPlay(){}

    void loopPlay(){}

    void stepPlay(){}

    getters and setters;
}

class PlayList{
    private Queue<Song> playlist;

    PlayList(){}
    
    void addSong(){}

    void removeSong(){}

    void moveSong(){}
}

class User{

    private String name;
    private String ID;

    getters and setters
}