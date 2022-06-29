import QtQuick 2.0
import Felgo 3.0

Item {

    id: item
    property var dataConut:undefined
    property alias image :image
    property alias row:row

    implicitWidth: 400
    implicitHeight: 300

    AppImage {
        id: image
        anchors.fill: parent
        source: "/run/media/root/study/截图/1.jpg"

    }

//    VideoRow{
//        id:row
//        z:1
//        anchors.bottom: parent.bottom
//        anchors.left: parent.left

//    }
    Row{
        id:row
        z:1
        property real spacing: dp(2)

        anchors.bottom: parent.bottom
        anchors.left: parent.left
        //
        function setText(){
                text.text=arguments[0];
        }

        VideoIcon{

            spacing: parent.spacing

            iconItem.icon:IconType.commento
            textItem.text: comments.viewCount
        }
        VideoIcon{

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




}
