import QtQuick 2.13
import Felgo 3.0

Item {
    id: item
    property int commentCount: 0

    function addName(){

        listModel.append(arguments[0])
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
                AppImage{
                    width: parent*0.8
                    height: parent*0.6
                    id:image
                    source: iSource
                }
                AppText{
                    id:uName
                }
            }
            Text {
                text: comment
            }
        }

    }




}
