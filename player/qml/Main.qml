import Felgo 3.0
import QtQuick 2.13
import My 1.0
import Users 1.0
import QtQuick 2.15
import QtQuick.Window 2.15

import QtQuick.Controls 2.5
import "video"

App {

    Page {
        title: qsTr("Main Page")
        AppButton{
                opacity: 0.3
                onClicked: {

                    re.set()
                    console.log("hgj")
                }

        }
    Rectangle{
        id:re
        x:100
        y:100
        width: 400
        height: 300
        opacity: 0.3
        color:"red"                 //test

        function set(){
            var te={"iSource":"/run/media/root/study/截图/1.jpg","uName":"adsge","comment":"hello"}
            comment.addName(te)
        }
        Comments{
            id:comment

        }
        Component.onCompleted:re.set()






        }
    }
}
