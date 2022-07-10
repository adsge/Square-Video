import QtQuick 2.13
import Felgo 3.0
import QtMultimedia 5.9
Item {

    id: item
    required property MediaPlayer mediaPlayer
    property bool muted: false
    property real volume: volumeSlider.value/100.

    AppButton{
        anchors.verticalCenter: volumeSlider.verticalCenter
        anchors.left: volumeSlider.right
        icon:muted? IconType.volumeoff :IconType.volumeup
        onClicked: muted=!muted
    }
    AppSlider {
        id: volumeSlider
//        anchors.bottom: parent.bottom
//        anchors.right: parent.right
        to: 100.0
        value: 100.0
    }
}
