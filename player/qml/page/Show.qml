import QtQuick 2.15
import Felgo 3.0
import QtQuick.Controls 2.0 as QC2
import QtQuick.Layouts 1.3
import "../video"


FlickablePage{
    id:showPage
    title:"Square Vedio"
    flickable.contentHeight: column.height
    scrollIndicator.visible: true
    //导航栏
    Rectangle{
        id:top
        width:parent.width
        height:70
        color:"pink"
        anchors.top:title.bottom
        anchors.bottom: firstTabBar.top
      //用户登陆
        Rectangle{
          id:register
          width:parent.width/13
          height:parent.height
          color:"white"

          anchors.left:top.left
          anchors.leftMargin: 20
          anchors.verticalCenter: parent.verticalCenter

//          Image{
//              source:"/root/Square Vedio/Page/qml/image/登陆.JPG"
//              anchors.verticalCenter: parent.verticalCenter
//          }
          TapHandler{
              onTapped: console.log("User Register")
          }
        }
        //搜索框
        Rectangle{
            id:search
            width: 2/3*top.width
            height:top.height
            anchors.left:register.right

            AppFlickable{
                id:flick
                anchors.top:search.bottom

            }
            anchors.leftMargin: 80
            anchors.rightMargin: 10
            anchors.bottom: flick.top
//            radius:15
            border.width: 2
            border.color: "lightgray"
            anchors.verticalCenter: search.verticalCenter
            color:"white"

            AppTextField{
                width:parent.width
                height:parent.height
                selectByMouse: true
                anchors.verticalCenter: search.verticalCente
                text:"请输入搜索内容"
                font.pixelSize: 18
                opacity: 0.5
//                focus:false
//                onFocusChanged: {
//                    if (focus == true){
//                        search.border.color = "lightblue"
//                    }
//                }
            }
        }
        //Button
        Rectangle{
            id:ok
            Text{
                text:"Search"
            }

            width:parent.width/15
            height:top.height
//            radius:20
            color:"white"
            anchors.left:search.right

            TapHandler{
                onTapped: console.log("Seacher successfully!")
            }
        }


    AppTabBar{
        id:firstTabBar
        contentContainer:leftcontent
        anchors.top:top.bottom

        AppTabButton{
            text:"推荐"
        }
        AppTabButton{
            text:"热门"
            TapHandler{
                onTapped:watchPage.open()
            }
        }
    }

    Column{
        id:leftcontent
        Repeater{
            model:["red","green","yellow","blue"]

            Rectangle{
                color:modelDate
                width:parent.width
                height:dp(20)
            }
        }
    }

//    QC2.SwipeView{
//        id:swipeView
//        anchors.top:firstTabBar.bottom
//        anchors.bottom: parent.bottom
//        width:parent.width
//        clip:true


//        Rectangle{
//            Videos{
//                id:video
//                anchors.fill: parent

//                TapHandler{
//                    onTapped: {
//                        video.videoPlay();
//                       // timer.start();
//                        console.log(video.mediaPlayer.duration)
//                    }
//                }
//            }
//        }


        Rectangle{
            color:"Green"
//            TapHandler{
//                onTapped: Watch{}
//            }
        }

//        Rectangle{
//            id:father
//            anchors.top:firstTabBar.bottom
//            Column{
//                Rectangle{
//                    id:bigRectangle
//                    color:"red"
//                    height:father.height/3
//                    width:father.width

//                    anchors.bottom: smallRectangle.top
//                }
//                Rectangle{
//                    id:smallRectangle
//                    color:"green"
//                    anchors.top:bigRectangle.bottom
//                    anchors.bottom:parent.bottom
//                }
//            }
//        }




    }

}


//    Dialog{
//        id:login
//        title:"请登陆您的账号"
//        anchors.centerIn: parent
//        visible: true




//        Row{
//            anchors.horizontalCenter: parent.horizontalCenter
//            spacing: 1 / 30 * parent.height
//            Column{
//                anchors.top: parent.top
//                anchors.topMargin: 5

//                Text {
//                    text: "账号："
//                    font.pixelSize: 20
//                }

//                Text {
//                    text: "密码："
//                    font.pixelSize: 20
//                }
//            }
//            Column{
//                AppTextField {
//                    id:nameInput
//                }
//               AppTextField {
//                    id:passwordInput
//                    echoMode: TextInput.Password
//                }
//        }
//}
//        positiveActionLabel: "登陆"
//        negativeActionLabel: "取消"
//        onAccepted: Show{}

