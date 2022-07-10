import QtQuick 2.15
import QtQuick.Dialogs 1.2
import QtMultimedia 5.0
import Qt.labs.platform 1.1
import QtQuick.Controls 2.15
import Felgo 3.0
import "../video"

Page{
    id:watchPage
    title:"Upload Video"
    property var upload_video_url: ""
    property var coverSrc:""
    function up(){
        
    }
    Rectangle {
        color: "#F8F8FF"
        anchors.fill: parent

        Videos {
            id: video_preview
            anchors.topMargin: 20
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            border.width: 1
            radius: 8
            color: "black"
            play: false
            video_url: upload_video_url
        }
        Image {
            id: cover
            source: "file"
        }
        AppText {
            id: label1
            anchors.top: video_preview.bottom
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            font.pixelSize: 24
            text: qsTr("添加视频信息")
        }

        AppTextField{
            id: video_title_text
            anchors.top: label1.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 10
            anchors.leftMargin: 20
            anchors.rightMargin: 20
            height: 60
            text: "请输入视频标题"
            color: "grey"
            font.pixelSize: 18
            backgroundColor: "#FFFFFF"
            radius: 8
            property bool isEmpty: true
            onFocusChanged: {
                console.log("focus: ", focus)
                if (focus == true){
                    if(isEmpty) {
                        text = ""
                        color = "black"
                    }
                } else {
                    var str = text.replace(/(^\s*)|(\s*$)/g, '');//把val首尾的空格去掉。

                    if (str === '' || str === undefined || str === null) {//输入框中输入空格也为空
                        text = "请输入视频标题"
                        color = "grey"
                        isEmpty = true
                    } else {
                        isEmpty = false
                    }
                }
            }
        }

        Rectangle {
            id: profile_rect
            anchors.top: video_title_text.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: add_btn.top
            anchors.margins: 20
            radius: 8

            Text {
                id: label2
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 10
                font.pixelSize: 22
                text: qsTr("简介")
            }

            TextField {
                id: text_edit
                anchors.top: label2.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: 10
                text: qsTr("")
                font.pointSize: 14
                color: "black"
                selectByMouse: true
                focus: true
                autoScroll: true
                wrapMode: TextInput.Wrap
                verticalAlignment: Text.AlignTop

                background:Rectangle{
                    color:"#F8F8FF"
                    radius:8
                }
            }
        }

        AppButton{
            id: addvideo_btn
            text:"添加视频"
            flat: false
            x: parent.width/4 - width/2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            radius: 14
            onClicked:fileDialog.open()
        }
        AppButton{
            id: addimg_btn
            text:"添加封面"
            flat: false
            x: parent.width/4*2 - width/2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            radius: 14
            onClicked:imgDialog.open()
        }
        AppButton{
            text:"上传"
            flat: false
            x: parent.width/4 * 3 - width/2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            radius: 14
            onClicked: {
                if(upload_video_url === "") {
                    warnDialog.open()
                } else {
                    upDialog.open()
                    up();
                    p_timer.start()
                }
            }
        }

        Dialog {
            id: warnDialog
            title: "请先添加视频"
            outsideTouchable: false
            onAccepted: close()
            onCanceled: close()
        }

        Dialog {
            id:upDialog
            title:"Uploading"
            outsideTouchable: false
            onAccepted: {
                console.log("Ok clicked ", progress_bar.value)
                if(progress_bar.value < 1) {
                    title = "Please Wait..."
                } else {
                    progress_bar.value = 0
                    p_timer.stop()
                    close()
                    title = "Uploading"
                }
            }
            onCanceled: {
                console.log("Cancel clicked")
                progress_bar.value = 0
                p_timer.stop()
                 title = "Uploading"
                close()
            }

            ProgressBar{
                id: progress_bar
                value: 0
                width: parent.width * 0.6
                height: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                background: Rectangle {   //背景项
                    implicitWidth: progress_bar.width
                    implicitHeight: progress_bar.height
                    color: "#DCDCDC"
                    radius: height/2 //圆滑度
                }

                contentItem: Item {   //内容项
                    Rectangle {
                        width: progress_bar.visualPosition * progress_bar.width
                        height: progress_bar.height
                        radius: height/2
                        color: "#4169E1"
                    }
                }
                Timer{
                    id: p_timer
                    interval: 50
                    repeat: true
                    running: false
                    onTriggered: {
                        if(parent.value < 1.0){
                            parent.value += 0.01
                            if(parent.value === 1) {
                                upDialog.title = "上传成功"
                            }
                        }else{
                            stop()
                        }
                    }
                }
            }
        }

        FileDialog {
           id: fileDialog
           title: "打开视频"
           nameFilters: ["video File (*.mp4 *.mkv)"]
           acceptLabel: "确定"
           rejectLabel: "取消"
           fileMode: FileDialog.OpenFile
           onAccepted: {
               console.log("选中的文件有:")
               for (var i in files) {
                   console.log(files[i])
               }
               upload_video_url = files[0]
               play = true
           }
       }
        FileDialog {
           id: imgDialog
           title: "打开图片"
           nameFilters: ["video File (*.jpg *.png)"]
           acceptLabel: "确定"
           rejectLabel: "取消"
           fileMode: FileDialog.OpenFile
           onAccepted: {
               console.log("选中的文件有:")
               for (var i in files) {
                   console.log(files[i])
               }
               coverSrc = files[0]
               play = true
           }
       }
    }
}
