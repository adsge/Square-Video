import QtQuick 2.13
import Felgo 3.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtMultimedia 5.9
Item {
    id: name
    //property  alias mediaPlayer: mediaPlayer
    property alias detail: detail
    property alias title: title
    //property int durat: undefine
    property int  viewConut: 0
    property  alias videoCover:videoCover
    property alias mediaPlayer: mediaPlayer
//    implicitWidth: 400
//    implicitHeight: 300
    VideoCover{
        id:videoCover
        visible: ture              //
        TapHandler{
            onTapped: {
                videoCover.visible=false
                name.vedioPlay();//
            }
        }
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

    PlaybackSeekControl{
        mediaPlayer: mediaPlayer
        anchors.bottom: parent.bottom
        width: parent.width*0.8
    }
    PlaybackRateControl{
        mediaPlayer: mediaPlayer
        width: parent.width*0.8
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
