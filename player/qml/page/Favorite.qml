import QtQuick 2.15
import Felgo 3.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
import QtMultimedia 5.0
import Qt.labs.platform 1.1

Page{

    Rectangle {
        id:return_button
        width: 30
        height: width
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 10
        color: "blue"
        Image {
            id: pic
            anchors.fill: parent

            source: "../image/返回.png"
        }
        TapHandler{
            onTapped: {

                    user_stack.pop()
            }
        }
    }
    SwipeView {
        id: swipeView
        anchors.top: return_button.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 10
        clip: true

    Rectangle {

      Flickable {
        anchors.fill: parent

        ListModel {
            id: video_model
            ListElement {
                video_img: "../image/1.png"
                video_text: "【爆肝制作】一口气搞清楚石油危机OPEC油价中东…的那些乱事儿～"
                up_name: "小Lin说"
            }

            ListElement {
                video_img: "../image/2.png"
                video_text: "“阿姨，我想通了”"
                up_name: "我叫孙火旺"
            }

            ListElement {
                video_img: "../image/3.png"
                video_text: "15年前这款童年阴影竟是盗版游戏？"
                up_name: "黑镖客梦回"
            }

            ListElement {
                video_img: "../image/4.png"
                video_text: "【不止游戏】二战德军号称“谜”的密码机，究竟是如何使用的？"
                up_name: "森纳映画"
            }

            ListElement {
                video_img: "../image/5.png"
                video_text: "【花小烙】为什么感冒的时候鼻涕会变多最后还会变黄？"
                up_name: "画渣花小烙"
            }

            ListElement {
                video_img: "../image/6.png"
                video_text: "如何用【免费】资源，一站式解锁高质量大学生活！"
                up_name: "取景框看世界"
            }
            ListElement {
                video_img: "../image/7.png"
                video_text: "街头背刺黑帮火并，夜色降临秩序重新洗牌！你绝不能错过的香港警匪片《PTU》！"
                up_name: "培根悖论唠唠嗑"
            }

            ListElement {
                video_img: "../image/8.png"
                video_text: "料 理 包 刺 客"
                up_name: "撕袜奶茶"
             }
          }
        ListView {
            id: list_view
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            model: video_model
            delegate:
                Rectangle {
                    width: parent.width - 20
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
                    }
                }
           }
        }
      }
}
