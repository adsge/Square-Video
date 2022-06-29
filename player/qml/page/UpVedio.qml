import QtQuick 2.0
import Felgo 3.0
import QtQuick.Dialogs 1.2
import QtMultimedia 5.0


Page{
    id:watchPage
    title:"Uploading Video"

    function open(){
        upDialog.open()
        console.log("hello")
    }


    AppButton{
        text:"Loading..."
        anchors.centerIn: parent
        backgroundColor: "pink"
        radius: 15
        onClicked:upDialog.open()
    }
    Dialog{
        id:upDialog
        title:"Select Video"
//         fileMode: FileDialog.OpenFiles
    }
}
