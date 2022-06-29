import QtQuick 2.0
import Felgo 3.0

Page {
    property alias row: row


    Rectangle{
        id:user

        width:parent.width
        height:parent.height/3
        color:"#e92f2f"

        Row {
            id: row
            x: 0
            y: 0
            width: 640
            height: 480
        }

//        ListView {
//            id: appListView
//            anchors.topMargin: 160

//            ListModel{
//                ListElement{
//                    icon:IconType.music
//                    text:"联系客服"

//                }
//                ListElement{
//                    icon:IconType.slideshare
//                    text:"青少年守护"

//                }
//                ListElement{
//                    icon:IconType.cog
//                    text:"设置"

//                }
//            }

//            delegate:Text{
//                text:icon+text
//            }
//        }
    }


}
