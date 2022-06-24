import QtQuick 2.12
import Felgo 3.0
import QtMultimedia 5.9

Item {
    id: name
    //property  alias mediaPlayer: mediaPlayer
    property alias detail: detail
    property alias title: title
    property int duration: 0
    property int  viewConut: 0

    function setDuration(){
            duration=arguments[0]/1000
    }


    VideoCover{
        id:videoCover
        visible: false              //

    }
    Text {
        id: title
        visible: false
        anchors.bottom: parent.bottom
        text: qsTr("text")
    }
    Text {
        id: detail
        visible: false
        text: qsTr("Detail")
    }
    MediaPlayer{
        id:mediaPlayer
        source: "../../../Video/1.mkv"

    }
    VideoOutput{
        anchors.fill: parent
        source: mediaPlayer
    }
    
    Row{
        AppSlider{
            id:slider

    }
        TapHandler{

        }
    }

    function vedioPlay(){
        mediaPlayer.play();
        viewConut++;
        videoCover.dataCount=viewConut

   }
   function vedioPause(){
        mediaPlayer.pause();
   }
   function vedioStop(){
        mediaPlayer.stop();
   }
}
