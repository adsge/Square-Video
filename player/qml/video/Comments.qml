import QtQuick 2.15
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
import QtMultimedia 5.0
import Qt.labs.platform 1.1
import Felgo 3.0

Rectangle {

    ScrollView {
        anchors.fill: parent

        ListModel {
            id: comment_model
            ListElement {
                comment_usr_img: "../image/头像.png"
                comment_usr_name: "用户1"
                comment_text: "真好看"
            }
            ListElement {
                comment_usr_img: "../image/头像.png"
                comment_usr_name: "用户2"
                comment_text: "真好看"
            }
            ListElement {
                comment_usr_img: "../image/头像.png"
                comment_usr_name: "用户3"
                comment_text: "真好看"
            }
        }

        GridView {
            id: comment_grid_view
            anchors.fill: parent
            clip: true
            model: comment_model
            cellWidth: parent.width
            cellHeight: cellWidth * 0.3
            delegate: comment_dele
        }

        Component {
            id: comment_dele
            Rectangle {
                width: comment_grid_view.cellWidth
                height: comment_grid_view.cellHeight
                color: "white"

                Image {
                    id: c_img
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    source: comment_usr_img   //保持宽高比
                    width: mask1.width
                    height: width
                    smooth: true
                    visible: false
                }

                Rectangle {
                    id: mask1
                    width: 34
                    height: width
                    radius: width / 2
                    visible: false
                }

                OpacityMask {
                    anchors.fill: c_img
                    source: c_img
                    maskSource: mask1
                }

                Text {
                    anchors.verticalCenter: c_img.verticalCenter
                    anchors.left: c_img.right
                    anchors.leftMargin: 10
                    font.pixelSize: 18
                    text: qsTr(comment_usr_name)
                }

                Text {
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: c_img.bottom
                    anchors.topMargin: 10
                    font.pixelSize: 18
                    text: qsTr(comment_text)
                }
            }
        }
    }
}
