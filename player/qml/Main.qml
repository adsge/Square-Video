import Felgo 3.0
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 2.0 as QC2
import "page"
import "video"

App{
    onInitTheme: {
        Theme.navigationBar.backgroundColor = "white"
        Theme.navigationBar.titleColor = "balck"

    }
    //App Navigation
    Navigation{
        id:navigation
        navigationMode:navigationModeTabs


        //Home Tab
        NavigationItem{
            icon:IconType.home
            title: "Home"

            StackView {
                id: home_stack
                initialItem: Component {
                    Show{}
//                    Watch{}
                }
                anchors.fill: parent
            }
        }
        //Upvedio
        NavigationItem{
            icon:IconType.camera
            title:"Upload"

            NavigationStack{
                UpVedio{}
//                Watch{}
            }

        }
        //User
        NavigationItem{
            title:"My"
            icon:IconType.child


                StackView{
                    id:user_stack
                    initialItem: Component {
                        User{}
                    }
                    anchors.fill: parent
                }

        }
    }
}







