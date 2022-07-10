import QtQuick 2.15
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
import QtMultimedia 5.0
import Qt.labs.platform 1.1
import Felgo 3.0
import "../video"

Page {
    id: watchPage
    property var w_video_url: ""
    property var w_up_img: ""
    property var w_up_name: ""
    property var w_video_text: ""
    property bool show_control: false

    Component.onCompleted: {
        console.log(w_video_url, w_up_img, w_up_name, w_video_text)
    }
    function setCover(){
        var i=0;
        for(i;imgSrc.length;i++){
            var data={"image":imgSrc[i],"video_text":video_text[i],"up_name":name[i],"videoSrc":videoSrc[i] }
                 video_model.append(data)
        }


    }
    Rectangle{
        anchors.fill: parent

        Videos {
            id: video_play
            video_url: w_video_url
            show_btn: show_control

            Rectangle {
                width: 30
                height: width
                anchors.left: parent.left
                anchors.leftMargin: 15
                anchors.top: parent.top
                anchors.topMargin: 10
                color: "transparent"
                Image {
                    id: pic
                    anchors.fill: parent
                    visible: show_control
                    source: "../image/返回.png"
                }
                TapHandler{
                    onTapped: {
                        if(show_control)
                            home_stack.pop()
                    }
                }
            }
            TapHandler{  onTapped: { show_control = !show_control } }
        }

        Rectangle {
            id: profile_comment_rect
            anchors.top: video_play.bottom
            width: parent.width
            height: 50

            Text {
                id: profile_text
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 25
                font.pixelSize: 18
                color: swipeView.currentIndex ? "grey" : "#ef7cb1"
                text: qsTr("简介")
                TapHandler {
                    onTapped: swipeView.setCurrentIndex(0)
                }
            }

            Text {
                id: comment_text
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: profile_text.right
                anchors.leftMargin: 25
                font.pixelSize: 18
                color: swipeView.currentIndex ? "#ef7cb1" : "grey"
                text: qsTr("评论")
                TapHandler {
                    onTapped: swipeView.setCurrentIndex(1)
                }
            }
        }

        SwipeView {
            id: swipeView
            anchors.top: profile_comment_rect.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: 10
            clip: true

            Rectangle {
//                color: "blue"

                Flickable {
                    anchors.fill: parent
                    contentHeight: list_view.contentHeight + video_profile_rect.height

                    ListModel {
                        id: video_model
                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/1.png"
                            video_text: "【爆肝制作】一口气搞清楚石油危机OPEC油价中东…的那些乱事儿～"
                            up_name: "小Lin说"
                        }

                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/2.png"
                            video_text: "“阿姨，我想通了”"
                            up_name: "我叫孙火旺"
                        }

                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/3.png"
                            video_text: "15年前这款童年阴影竟是盗版游戏？"
                            up_name: "黑镖客梦回"
                        }

                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/4.png"
                            video_text: "【不止游戏】二战德军号称“谜”的密码机，究竟是如何使用的？"
                            up_name: "森纳映画"
                        }

                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/5.png"
                            video_text: "【花小烙】为什么感冒的时候鼻涕会变多最后还会变黄？"
                            up_name: "画渣花小烙"
                        }

                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/6.png"
                            video_text: "如何用【免费】资源，一站式解锁高质量大学生活！"
                            up_name: "取景框看世界"
                        }
                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/7.png"
                            video_text: "街头背刺黑帮火并，夜色降临秩序重新洗牌！你绝不能错过的香港警匪片《PTU》！"
                            up_name: "培根悖论唠唠嗑"
                        }

                        ListElement {
                            up_img: "../image/头像.png"
                            video_img: "../image/8.png"
                            video_text: "料 理 包 刺 客"
                            up_name: "撕袜奶茶"
                        }

                    }

                    Rectangle {
                        id: video_profile_rect
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                        height: up_img_rect.height + video_text.height + 80

                        Rectangle {
                            id: up_img_rect
                            width: 40
                            height: width
                            radius: height/2
                            color:"white"

                            Image {
                                id: sourceimage
                                source: up_img
                                anchors.fill: parent
                                smooth: true
                                visible: false
                            }

                            Rectangle {
                                id: img_mask
                                width: parent.width
                                height: parent.height
                                radius: height/2
                                visible: false
                            }

                            OpacityMask {
                                anchors.fill: sourceimage
                                source: sourceimage
                                maskSource: img_mask
                            }

                            Text {
                                anchors.left: sourceimage.right
                                anchors.verticalCenter: sourceimage.verticalCenter
                                anchors.leftMargin: 15
                                font.pixelSize: 20
                                text: qsTr(w_up_name)
                            }
                        }

                        Rectangle {
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            anchors.verticalCenter: up_img_rect.verticalCenter
                            width: 68
                            height: 34
                            radius: 6
                            color: "#ef7cb1"
                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: 16
                                color: "white"
                                text: qsTr("+关注")
                            }
                        }

                        Text {
                            id: video_text
                            anchors.top: up_img_rect.bottom
                            anchors.left: up_img_rect.left
                            anchors.topMargin: 10
                            anchors.right: parent.right
                            font.pixelSize: 18
                            clip: true
                            elide: Text.ElideRight
                            maximumLineCount:2
                            wrapMode: Text.WordWrap
                            text: qsTr(w_video_text)
                        }

                        Row {
                            anchors.top: video_text.bottom
                            anchors.topMargin: 10
                            anchors.left: parent.left
                            anchors.right: parent.right
                            height: 60
                            Rectangle {
                                width: parent.width / 4
                                height: parent.height
                                Image {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    width: 34
                                    height: width
                                    source: "../image/点赞.png"
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.bottom: parent.bottom
                                    font.pixelSize: 14
                                    text: qsTr("点赞")
                                }
                            }

                            Rectangle {
                                width: parent.width / 4
                                height: parent.height
                                Image {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    width: 36
                                    height: width
                                    source: "../image/踩.png"
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.bottom: parent.bottom
                                    font.pixelSize: 14
                                    text: qsTr("踩")
                                }
                            }

                            Rectangle {
                                width: parent.width / 4
                                height: parent.height
                                Image {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    width: 38
                                    height: width
                                    source: "../image/收藏.png"
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.bottom: parent.bottom
                                    font.pixelSize: 14
                                    text: qsTr("收藏")
                                }
                            }

                            Rectangle {
                                width: parent.width / 4
                                height: parent.height
                                Image {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    width: 30
                                    height: width
                                    source: "../image/转发.png"
                                }

                                Text {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.bottom: parent.bottom
                                    font.pixelSize: 14
                                    text: qsTr("转发")
                                }
                            }
                        }
                    }

                    ListView {
                        id: list_view
                        anchors.top: video_profile_rect.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        model: video_model
                        delegate: Row {
                            Rectangle {
                                width: video_play.width - 20
                                height: width * 0.3
                                color: "transparent"

                                Rectangle {
                                    anchors.fill: parent
                                    color: "white"
                                    anchors.margins: 10
                                    radius: 8

                                    Image {
                                        id: v_img
                                        source: video_img
                                        fillMode: Image.PreserveAspectFit   //保持宽高比
                                        width: mask.width
                                        anchors.centerIn: parent.Center
                                        smooth: true
                                        visible: false
                                    }

                                    Rectangle {
                                        id: mask
                                        width: height / 0.56
                                        height: parent.height
                                        radius: 8
                                        visible: false
                                    }

                                    OpacityMask {
                                        anchors.fill: v_img
                                        source: v_img
                                        maskSource: mask
                                    }

                                    Rectangle {
                                        anchors.top: parent.top
                                        anchors.left: v_img.right
                                        anchors.right: parent.right
                                        anchors.bottom: parent.bottom
                                        height: parent.height
                                        visible: true
                                        Text {
                                            id: v_text
                                            width: parent.width
                                            anchors.top: parent.top
                                            anchors.left: parent.left
                                            anchors.right: parent.right
                                            anchors.topMargin: 6
                                            anchors.leftMargin: 10
                                            anchors.rightMargin: 10
                                            font.pixelSize: 16
                                            clip: true
                                            elide: Text.ElideRight
                                            maximumLineCount:2
                                            wrapMode: Text.WordWrap
                                            text: qsTr(video_text)
                                        }

                                        Text {
                                            id: v_up_name
                                            anchors.bottom: parent.bottom
                                            anchors.left: parent.left
                                            anchors.right: parent.right
                                            anchors.leftMargin: 10
                                            anchors.rightMargin: 10
                                            anchors.bottomMargin: 10
                                            font.pixelSize: 16
                                            clip: true
                                            color: "grey"
                                            text: qsTr(up_name)
                                        }
                                    }
                                }
                                TapHandler {
                                    onTapped: {
                                        console.log(up_name)
                                        var component = Qt.createComponent("Watch.qml")
                                        var next_page = component.createObject(parent,
                                                                               {w_video_url: "../Video/1.mkv",
                                                                                w_up_img: up_img,
                                                                                w_up_name: up_name,
                                                                                w_video_text: video_text})
                                        home_stack.replace(next_page)
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Comments {
                id: comments
            }
        }
    }
}
