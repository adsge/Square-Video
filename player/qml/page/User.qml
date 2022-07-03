import QtQuick 2.10
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15
import Felgo 3.0

Page{
    id: user_page
    title:"User"

    Rectangle {
        id: user_info_rect
        anchors.top: title.bottom
        width: parent.width
        height: parent.height * 0.14
        color: "white"

        Rectangle {
            id: img_rect
            anchors.left: parent.left
            anchors.leftMargin: 20
            width: height
            height: parent.height * 0.8
            radius: width / 2
            anchors.verticalCenter: parent.verticalCenter

            Image {
                id: user_img
                source: "../image/头像.png"
                anchors.fill: parent
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
                anchors.fill: user_img
                source: user_img
                maskSource: mask
            }
        }

        Text {
            id: user_name
            anchors.left: img_rect.right
            y: parent.height * 0.15
            anchors.leftMargin: 20
            font.pixelSize: parent.height * 0.2
            text: qsTr("Voooooli")
        }

        Text {
            anchors.left: img_rect.right
            anchors.top: user_name.bottom
            anchors.leftMargin: 20
            anchors.topMargin: 6
            width: parent.width * 0.48
            font.pixelSize: parent.height * 0.15
            clip: true
            elide: Text.ElideRight
            maximumLineCount:2
            wrapMode: Text.WordWrap
            text: qsTr("签名: 海上生明月，天涯共此时")
        }

        Image {
            id: enter_img
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            width: parent.height * 0.18
            height: width
            opacity: 0.8
            source: "../image/右箭头.png"
        }

        Text {
            anchors.right: enter_img.left
            anchors.leftMargin: 4
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: parent.height * 0.16
            color: "grey"
            text: qsTr("空间")
        }
    }

    ScrollView {
        anchors.top: user_info_rect.bottom
        anchors.topMargin: 20
        width: parent.width
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Rectangle {
            id: _rect
            height: 150
            color: "green"

            ListModel {
                id: row_model
                ListElement {
                    img: "../image/缓存.png"
                    img_text: "离线缓存"
                }
                ListElement {
                    img: "../image/历史记录.png"
                    img_text: "历史记录"
                }
                ListElement {
                    img: "../image/我的收藏.png"
                    img_text: "我的收藏"
                }
                ListElement {
                    img: "../image/稍后观看.png"
                    img_text: "稍后再看"
                }
            }

            Row {
                Repeater{
                    model: row_model
                    delegate: row_delegate
                }
            }

            Component {
                id: row_delegate
                Rectangle {
                    width: user_page.width / 4
                    height: _rect.height

                    Rectangle {
                        id: img_rect2
                        anchors.top: parent.top
                        anchors.topMargin: 36
                        anchors.left: parent.left
                        anchors.leftMargin: 36
                        anchors.right: parent.right
                        anchors.rightMargin: 36
                        height: parent.width - 36*2
                        Image {
                            anchors.fill: parent
                            source: img
                        }
                    }

                    Text {
                        anchors.top: img_rect2.bottom
                        anchors.topMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 16
                        text: img_text
                    }
                }
            }
        }

        Text {
            id: more_text
            anchors.top: _rect.bottom
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.pixelSize: 18
            text: qsTr("更多服务")
        }

        ListModel {
            id: column_model
            ListElement {
                col_img: "../image/联系客服.png"
                col_img_text: "联系客服"
            }

            ListElement {
                col_img: "../image/听视频.png"
                col_img_text: "听视频"
            }

            ListElement {
                col_img: "../image/青少年守护.png"
                col_img_text: "青少年守护"
            }

            ListElement {
                col_img: "../image/设置.png"
                col_img_text: "设置"
            }
        }

        Column {
            anchors.top: more_text.bottom
            anchors.topMargin: 20
            spacing: 1
            Repeater{
                model: column_model
                delegate: column_delegate
            }
        }

        Component {
            id: column_delegate

            Rectangle {
                width: user_page.width
                height: 48
//                color: "blue"

                Rectangle {
                    id: img_rect3
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 30
                    height: parent.height - 20
                    width: parent.height - 20
//                    color: "orange"
                    Image {
                        anchors.fill: parent
                        source: col_img
                    }
                }

                Text {
                    anchors.left: img_rect3.right
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 16
                    text: col_img_text
                }

                Image {
                    height: parent.height * 0.42
                    width: height
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.verticalCenter: parent.verticalCenter
                    opacity: 0.8
                    source: "../image/右箭头.png"
                }
            }
        }
    }
}
