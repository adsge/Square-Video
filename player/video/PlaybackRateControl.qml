import QtQuick 2.0
import Felgo 3.0
//import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtMultimedia 5.9

Item {
    id: root

    required property MediaPlayer mediaPlayer

    Row {
        anchors.fill: parent

        Slider {
            id: slider
            //Layout.fillWidth: true

            from: 0.5
            to: 2.5
            value: 1.0

            onMoved: { mediaPlayer.setPlaybackRate(value) }
        }
        Text {
            text: "Rate " + slider.value + "x"
        }
    }
}
