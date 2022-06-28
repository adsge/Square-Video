import QtQuick 2.13
import Felgo 3.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtMultimedia 5.9
Item {
    id: name

//    property alias detail: detail
//    property alias title: title
    property int durat: 0
    property int  viewConut: 0
    property  alias videoCover:videoCover
    property alias mediaPlayer: mediaPlayer


    function setDuration(){
        durat=arguments[0]
    }
    function videoPlay(){
        mediaPlayer.play();
        viewConut++;
        videoCover.dataCount=viewConut

    }
    function videoPause(){
        mediaPlayer.pause();
    }
    function videoStop(){
        mediaPlayer.stop();
    }
    function setTitle(){
        title.text=arguments[0];
    }
    function setDetail(){
        detail.text=arguments[0]
    }


    //封面
    VideoCover{
        id:videoCover
        visible: true              //

        TapHandler{
            onTapped: {
                videoCover.visible=false
                name.videoPlay();//
            }
        }
    }
   // 标题
    Text {
        id: title
        visible: false
        anchors.bottom: parent.bottom
        text: qsTr("text")
    }
    //简介
    Text {
        id: detail
        visible: false
        text: qsTr("Detail")
    }
    MediaPlayer{
        id:mediaPlayer
        source: "../../../Video/1.mkv"
        muted: control.muted
        volume: control.volume
    }
    VideoOutput{
        anchors.fill: parent
        source: mediaPlayer
    }

    //音量控制
    AudioControl{
        id:control
        anchors.right: parent.right
        mediaPlayer: mediaPlayer
    }


    //进度条拖动
    PlaybackSeekControl{
        mediaPlayer: mediaPlayer
        anchors.bottom: parent.bottom
        width: parent.width*0.8
    }
    //速率控制
    PlaybackRateControl{
        mediaPlayer: mediaPlayer
        width: parent.width*0.8
    }




}
