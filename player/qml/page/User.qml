import QtQuick 2.15
import Felgo 3.0

Page {

    property alias typeModel: typeMenuRepeater.model
    title:"User"

    Rectangle{
        id:user
        width:parent.width
        height:parent.height /4
        color:"white"


    Rectangle{
        id:viewer
        color:"white"
        radius:30
        width:100
//        width: 1/3 * user.width
        height: 1/3 * user.height

        anchors.left:user.left
        anchors.top:user.top
        anchors.right:name.left

        anchors.topMargin: 30
        anchors.leftMargin: 60

        Image{
            id:touxiang
            anchors.fill:viewer
            anchors.bottom:userMenu.top
            source:"/root/Square Vedio/player/Page/qml/image/头像.png"
            anchors.verticalCenter:viewer.verticalCenter
            TapHandler{
                onDoubleTapped: console.log(touxiang)
            }
        }

        Rectangle{
            id:name
            width:1/2 *user.width
            height: 1/3 * user.height

            anchors.left:viewer.right
            anchors.leftMargin: 100
            Text{
                text:"Xianghan"
                font.pointSize: 24
                anchors.centerIn: name
            }
        }

        Rectangle{
            id:nextIn
            color:"white"
            radius:30
            width:70
            height: 1/4 *user .height


            anchors.topMargin: 40
            anchors.left:name.right
            anchors.leftMargin: 150

            Image{
                anchors.fill:nextIn
                source:"/root/Square Vedio/player/Page/qml/image/空间.PNG"
                TapHandler{
                    onTapped: console.log("ok")
                }
            }
        }

        Rectangle{
            id: userMenu
            width:user.width
            height:1/3 * user.height
            anchors.left:user.left
            anchors.leftMargin: 10
            anchors.top:touxiang.bottom
            anchors.topMargin: 20
            anchors.bottom:user.bottom

            color:"red"
            Row{
                id:typeMenu
                spacing:50
                Repeater{
                    id:typeMenuRepeater
                    model:3
                    delegate: typeMenuDelegate
                }
            }
        }
     }

    Component{
        id:typeMenuDelegate
        Rectangle{
            width:50
            height:40

            color:"lightblue"
        }

    }
  }


//    AppListView{
//       model: ListModel{
//         ListElement{
////             icon:IconType.adjust
//             text:"联系客服"
//               }
//         ListElement{
////              icon:IconType.aligncenter
//              text:"青少年模式"
//               }
//          ListElement{
////              icon:IconType.alignright
//              text:"设置"
//               }
//           }
//       delegate:SimpleRow{
//           text:text
//       }


//    }

}
