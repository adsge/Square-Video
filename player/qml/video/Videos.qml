import QtQuick 2.13
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtMultimedia 5.9
import Felgo 3.0

Rectangle {
    id: video_rect
    width: parent.width
    height: width*9/16
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    color: "black"

    property var video_url: ""
    property bool play: true
    property bool show_btn: false

    Image {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        source: "../image/视频.png"
    }

    MediaPlayer{
        id:player
        source: video_url
        autoPlay: play
        onStatusChanged: {
            console.log("hello")
            if(status === MediaPlayer.EndOfMedia) {
                video_rect.play = false
            }
        }
    }
    VideoOutput {
        anchors.fill: parent
        source: player
    }

    AppButton {
        id: play_btn
        width: 30
        height: width
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        backgroundColor: "transparent" // 解决播放器出现Rectangle的问题
        AppImage {
            anchors.fill: parent
            visible: show_btn
            source: play ? "../image/暂停.png" : "../image/开始.png"
        }
        onClicked:{
            if(show_btn) {
                play = !play
                if(play)
                    player.play()
                else
                    player.pause()
            }
        }
    }

    AppSlider {
        id: slider
        anchors.left: play_btn.right
        anchors.verticalCenter: play_btn.verticalCenter
        anchors.leftMargin: 15
        visible: show_btn
        value: player.position / player.duration // for slider to move along with movie

        handle: Rectangle {
            width: 20
            height: 20
            border.color: "gray"
            border.width: 2
            radius: 10
            color: slider.pressed ? "white" : "lightgray"
            x: slider.visualPosition * (slider.availableWidth)// - width / 2
            anchors.verticalCenter: slider.verticalCenter
        }

        property real index: 0
        property bool changed: false
        onMoved: {
            if (pressed) {
                index = position
            }
        }
        onPressedChanged: {
            if (pressed === true) {
                changed = true
            } else if (changed === true) {
                player.seek(index * player.duration)
                changed = false
            }
        }
    }

    Text {
        id: durationTime
        anchors.left: slider.right
        anchors.verticalCenter: slider.verticalCenter
        anchors.leftMargin: 15
        color: "#ffffff";
        visible: show_btn
        font{pointSize: 12; family: "PingFang SC";weight: Font.Medium;}
        text: {
            var milliseconds = player.position
            var minutes = Math.floor(milliseconds / 60000)
            milliseconds -= minutes * 60000
            var seconds = milliseconds / 1000
            seconds = Math.round(seconds)
            if (seconds < 10)
                return minutes + ":0" + seconds + "/"
            else
                return minutes + ":" + seconds + "/"
        }
    }

    Text {
        id: endTime;
        anchors.left: durationTime.right
        anchors.verticalCenter: slider.verticalCenter
        color: "#ffffff";
        visible: show_btn
        font{pointSize: 12; family: "PingFang SC"; weight: Font.Medium;}
        text: {
            var milliseconds = player.duration.valueOf()
            var minutes = Math.floor(milliseconds / 60000)
            milliseconds -= minutes * 60000
            var seconds = milliseconds / 1000
            seconds = Math.round(seconds)
            if (seconds < 10)
                return minutes + ":0" + seconds
            else
                return minutes + ":" + seconds /*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               return m + ":" + s*/
        }
    }
}
