import QtQuick 2.0
import Felgo 3.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15

Rectangle {
    color: "transparent"
    ScrollView {
        anchors.fill: parent
        clip: true
        ListModel {
            id: grid_model
        }

        GridView {
            id: video_grid_view
            anchors.fill: parent
            clip: true
            model: 4
            cellWidth: parent.width
            cellHeight: width * 0.56 + (width / 2 * 0.85 * 4)
            delegate: video_delegate
        }

        Component {
            id: video_delegate
            Rectangle {
                width: video_grid_view.cellWidth
                height: video_grid_view.cellHeight
                Item {
                    id: name
                    anchors.fill: parent

                    SwipeView {
                        id: swipe_view
                        width: parent.width
                        height: width * 0.56
                        anchors.top: parent.top
                        Repeater {
                            model: 6
                            Loader {
                                active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem
                                sourceComponent: Rectangle {
                                    id: swip_rect
                                    anchors.fill: parent
                                    anchors.margins: 10
                                    radius: 8
                                    color: "orange"
                                    layer.enabled: true
                                    layer.effect: OpacityMask {
                                        maskSource: Rectangle {
                                            width: swip_rect.width
                                            height: swip_rect.height
                                            radius: swip_rect.radius
                                        }
                                    }
                                    Image {
                                        anchors.fill: parent
                                        source: "../image/11.png"
                                    }
                                    Text {
                                        text: index
                                        Component.onCompleted: console.log("created:", index)
                                        Component.onDestruction: console.log("destroyed:", index)
                                    }
                                }
                            }
                        }
                    }

                    ListModel {
                        id: video_model
                        ListElement {
                            img_source: "../image/1.png"
                            video_text: "【爆肝制作】一口气搞清楚石油危机OPEC油价中东…的那些乱事儿～"
                            up_name: "小Lin说"
                        }

                        ListElement {
                            img_source: "../image/2.png"
                            video_text: "“阿姨，我想通了”"
                            up_name: "我叫孙火旺"
                        }

                        ListElement {
                            img_source: "../image/3.png"
                            video_text: "15年前这款童年阴影竟是盗版游戏？"
                            up_name: "黑镖客梦回"
                        }

                        ListElement {
                            img_source: "../image/4.png"
                            video_text: "【不止游戏】二战德军号称“谜”的密码机，究竟是如何使用的？"
                            up_name: "森纳映画"
                        }

                        ListElement {
                            img_source: "../image/5.png"
                            video_text: "【花小烙】为什么感冒的时候鼻涕会变多最后还会变黄？"
                            up_name: "画渣花小烙"
                        }

                        ListElement {
                            img_source: "../image/6.png"
                            video_text: "如何用【免费】资源，一站式解锁高质量大学生活！"
                            up_name: "取景框看世界"
                        }
                        ListElement {
                            img_source: "../image/7.png"
                            video_text: "街头背刺黑帮火并，夜色降临秩序重新洗牌！你绝不能错过的香港警匪片《PTU》！"
                            up_name: "培根悖论唠唠嗑"
                        }

                        ListElement {
                            img_source: "../image/8.png"
                            video_text: "料 理 包 刺 客"
                            up_name: "撕袜奶茶"
                        }
                    }

                    GridView {
                        id: video_grid_view1
//                        anchors.fill: parent
                        anchors.top: swipe_view.bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        height: parent.width / 2 * 0.85 * 4
                        clip: true
                        model: video_model
                        cellWidth: parent.width/2
                        cellHeight: cellWidth * 0.85
                        delegate: video_delegate
                    }

                    Component {
                        id: video_delegate
                        Rectangle {
                            width: video_grid_view1.cellWidth
                            height: video_grid_view1.cellHeight
                            color: "transparent"

                            Rectangle {
                                id: mask
                                anchors.fill: parent
                                color: "orange"
                                anchors.margins: 10
                                radius: 8
                                layer.enabled: true
                                layer.effect: OpacityMask {
                                    maskSource: Rectangle {
                                        width: mask.width
                                        height: mask.height
                                        radius: mask.radius
                                    }
                                }

                                Rectangle {
                                    id: v_img
                                    width: parent.width
                                    height: width * 0.56
                                    Image {
                                        id: sourceimage
                                        source: img_source
                                        fillMode: Image.PreserveAspectFit   //保持宽高比
                                        width: parent.width
                                        anchors.centerIn: parent.Center
                                    }
                                }

                                Rectangle {
                                    color: "#FFFAF0"
                                    anchors.top: v_img.bottom
                                    anchors.left: v_img.left
                                    anchors.bottom: parent.bottom
                                    width: parent.width
                                    visible: true
                                    Text {
                                        id: v_text
                                        anchors.top: parent.top
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.topMargin: 6
                                        anchors.leftMargin: 10
                                        anchors.rightMargin: 10
                                        font.pixelSize: 16
                                        clip: true
                                        elide: Text.ElideRight
                                        maximumLineCount:1
                                        wrapMode: Text.WordWrap
                                        text: qsTr(video_text)
                                    }

                                    Text {
                                        id: v_up_name
                                        anchors.top: v_text.bottom
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.leftMargin: 10
                                        anchors.rightMargin: 10
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
}

