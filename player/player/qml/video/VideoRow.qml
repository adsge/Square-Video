import QtQuick 2.13
import Felgo 3.0

Row {
    property var dataConut:undefined
    property real spacing: dp(2)
    function setText(){
            text.text=arguments[0];
    }

    VideoIcon{
//        anchors.verticalCenter: parent.verticalCenter
        spacing: parent.spacing

        iconItem.icon:IconType.commento
        textItem.text: dataConut.viewCount
    }
    VideoIcon{
//        anchors.centerIn: parent
        spacing: parent.spacing

        iconItem.icon:IconType.playcircleo
        textItem.text: dataConut.commentCount
    }
    VideoIcon{
        spacing: parent.spacing

        iconItem.icon:' '
        textItem.text:' '


    }

}
