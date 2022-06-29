import Felgo 3.0
import QtQuick 2.12
import QtQuick.Controls 2.0 as QC2
import "page"
App{

    //App Navigation
    Navigation{
        id:navigation
        navigationMode:navigationModeTabs


        //Home Tab
        NavigationItem{
            icon:IconType.home
            title: "Home"

            NavigationStack{
                Show{}
            }
        }
        //Upvedio
        NavigationItem{
            icon:IconType.camera
            title:"Upload"

            NavigationStack{
                UpVedio{}
            }

        }
        //User
        NavigationItem{
            title:"My"
            icon:IconType.child

            NavigationStack{
                User{}
            }
        }
    }
}







