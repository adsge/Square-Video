import QtQuick 2.15
import Felgo 3.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
import "../video"


FlickablePage{
    id:showPage
    title:"Square Vedio"
    backgroundColor: "white"
    flickable.contentHeight: parent.height - 65
    scrollIndicator.visible: true

    TapHandler{
        onTapped: search_text_field.focus = false
    }
//    导航栏
    Rectangle{
        id:top
        width:parent.width
        height:parent.height * 0.06
        color: "white"
        anchors.top:title.bottom
//        anchors.bottom: firstTabBar.top
        //用户登陆
        Rectangle {
            id:register
            width:parent.height
            height:parent.height
            radius: height/2
            color:"white"
            anchors.left:top.left
            anchors.leftMargin: 22
            anchors.verticalCenter: parent.verticalCenter

            Image {
                id: sourceimage
                source: "../image/头像.png"
                anchors.fill: parent
                anchors.margins: 3
                smooth: true
                visible: false
            }

            Rectangle {
                id: mask
                width: parent.width
                height: parent.height
                radius: height/2
                visible: false
            }

            OpacityMask {
                anchors.fill: sourceimage
                source: sourceimage
                maskSource: mask
            }

            TapHandler{
                onTapped: console.log("User Register")
            }
        }
        //搜索框
        Rectangle{
            id: search
            height: top.height - 8
            anchors.left: register.right
            anchors.right: search_btn.left
            anchors.leftMargin: 20
            anchors.rightMargin: 10
            border.width: 2
            border.color: "lightgray"
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
            radius: 8

            AppTextField{
                id: search_text_field
                anchors.fill: parent
                anchors.margins: 2
                selectByMouse: true
                anchors.verticalCenter: search.verticalCente
                text: "请输入搜索内容"
                font.pixelSize: 18
                opacity: 0.5
                radius: 8
                onFocusChanged: {
                    if (focus == true){
                        search.border.color = "lightblue"
                        text = ""
                        opacity = 1
                    } else {
                        var str = text.replace(/(^\s*)|(\s*$)/g, '');//把val首尾的空格去掉。

                        if (str === '' || str === undefined || str === null) {//输入框中输入空格也为空
                            text = "请输入搜索内容"
                            opacity = 0.5
                        }
                    }
                }
            }
        }
        //Button
        Rectangle {
            id: search_btn
            anchors.right: top.right
            anchors.rightMargin: 22
            width: parent.height
            height: parent.height
            color: "transparent"

            Image {
                id: search_btn_img
                anchors.fill: parent
                anchors.margins: 8
                source: "../image/搜索小.png"
            }
            TapHandler{
                onTapped: {
                    console.log("Seacher successfully!")
                }
            }
        }
    }

    Rectangle{
        id: _
        color: "transparent"
        anchors.top: top.bottom
        anchors.left: top.left
        anchors.right: top.right
        anchors.bottom: parent.bottom

        AppTabBar{
            id:firstTabBar
            contentContainer: swipeView
            anchors.top: parent.top

            AppTabButton{
                text:"推荐"
            }
            AppTabButton{
                text:"热门"
            }
        }

        SwipeView {
            id: swipeView
            anchors.top: firstTabBar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: 10
            clip: true

            Rectangle {
                RecommendedPage {
                    anchors.fill: parent
                }
            }

            Rectangle {
                color: "Green"
            }

        }
    }


