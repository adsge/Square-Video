import QtQuick 2.13
import Felgo 3.0
import QtQuick.Controls 2.15
import QtMultimedia 5.9

Item {

    id: item
    required property MediaPlayer mediaPlayer

    AppText {
        id: durationTime
        anchors.bottom: parent.bottom
        anchors.left: slider.right
        text:{
            var milliseconds=mediaPlayer.position
            var seconds=Math.floor(milliseconds/60000)
            var minutes = (mediaPlayer.position / 1000 - seconds * 60).toFixed(1)
            return `${seconds}:${minutes.padStart(4, 0)}`

        }
    }
    Audio{
        id:audio
        source: mediaPlayer
    }
    AppSlider{
        id:slider
        anchors.bottom: parent.bottom
        width: parent.width*0.8
        value: mediaPlayer.position/mediaPlayer.duration
        onMoved:{
            mediaPlayer.seek(value*mediaPlayer.duration);
            audio.seek(value*mediaPlayer.duration)}
       }



}
