import QtQuick 2.0
import Felgo 3.0
import ""

Item {
    id: item
    property int viewCount: 0
    property int commentCount: 0

    function addName(){
        var imageSource={"iSource":arguments[0][0]}
        var userName={"uName":arguments[0][1]}
        var textComment={"tComment":arguments[0][2]}
        listModel.append(imageSource,userName,textComment)
        commentCount++;
    }

    AppListView{
        model: ListModel{
            id:listModel
        }
        delegate: delegate
    }
    Component{
        id:delegate
        Column{
            Row{
                AppImage {
                    id: image
                    source: iSource
                }
                AppText {
                    id: name
                    text: uName
                }
            }
            Text {
                id: comment
                text: tComment
            }
        }

    }




}
