import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.9

Item {
    id: name
    property  alias mediaPlayer: mediaPlayer


   // VideoCover{}
    MediaPlayer{
        id:mediaPlayer
        source: "../../../Video/1.mkv"


    }
    VideoOutput{
        anchors.fill: parent
        source: mediaPlayer
    }
   function vedioPlay(){
        mediaPlayer.play();
   }
   function vedioPause(){
        mediaPlayer.pause();
   }
   function vedioStop(){
        mediaPlayer.stop();
   }
}
