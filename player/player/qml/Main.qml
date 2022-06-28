import Felgo 3.0
import QtQuick 2.15
import "video"
//import"Page"
App {
    Page {
        title: qsTr("Main Page")

    Rectangle{
        width: 400
        height: 300
        opacity: 0.3
        color:"red"                 //test


//        Comments{

//        }


        Videos{
            id:video
            anchors.fill: parent


            TapHandler{
                onTapped: {
                    video.videoPlay();
                   // timer.start();
                    console.log(video.mediaPlayer.duration)
                }
            }



        }
//        Timer{
//            id:timer
//            interval: 5000//5 s
//            onTriggered:if(video.mediaPlayer.playbackState===1)
//                            video.setDuration(video.mediaPlayer.duration)

//            }

        }
    }
}
/*App{

    //App Navigation
    Navigation{
        id:navigation
        navigationMode:navigationModeTabs


        //Home Tab
        NavigationItem{
            icon:IconType.home
            title: "Home"

            NavigationStack{
                Show{
                    }
                }
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
*/







