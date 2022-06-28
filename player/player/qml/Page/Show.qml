import QtQuick 2.15
import Felgo 3.0
import QtQuick.Controls 2.0 as QC2
//import "video"

FlickablePage{
    title:"Square Vedio"
    flickable.contentHeight: column.height
    scrollIndicator.visible: true
    property  alias vedio: vedio
    AppTabBar{
        id:firstTabBar
        contentContainer: vedio

        AppTabButton{
            text:"推荐"
        }
        AppTabButton{
            text:"热门"
        }
    }
    QC2.SwipeView{
        id: vedio
        anchors.top:firstTabBar.bottom
        anchors.bottom: parent.bottom
        width:parent.width
        clip:true

        Rectangle{
            id:commend

        }
        Rectangle{
            color:"white"
        }



    }


}
