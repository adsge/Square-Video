import QtQuick 2.12
import Felgo 3.0

Row {
    property var comments:undefined
    property real spacing: dp(10)
    function setText(){
            text.text=arguments[0];
    }

    VideoIcon{
//        anchors.verticalCenter: parent.verticalCenter
        spacing: parent.spacing

        iconItem.icon:IconType.commento
        textItem.text: comments.viewCount
    }
    VideoIcon{
//        anchors.centerIn: parent
        spacing: parent.spacing

        iconItem.icon:IconType.playcircleo
        textItem.text: comments.commentCount
    }
    VideoIcon{
        spacing: parent.spacing

        iconItem.icon:' '
        textItem.text:' '


    }

}
