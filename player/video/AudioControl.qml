import QtQuick 2.0
import Felgo 3.0

Item {

    id: item
    required property MediaPlayer mediaPlayer
    property bool muted: false
    property real volume: volumeSlider.value/100.

    AppButton{
        anchors.verticalCenter: volumeSlider.verticalCenter
        anchors.left: volumeSlider.right
        icon:muted? IconType.volumeup :IconType.volumeoff
        onClicked: muted=!muted
    }
    AppSlider {
        id: volumeSlider
        //anchors.bottom: parent.bottom
        anchors.right: parent.right
        to: 100.0
        value: 100.0
    }
}
