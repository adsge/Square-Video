import QtQuick 2.0
import Felgo 3.0
import ""

Item {
    id: item
    function add(){
        textModel.append()
    }
    ListView{


        model: ListModel{
            id:textModel
        }


        delegate:Users{
            id:user
            Text{
                text:" "
            }
        }






    }
}
