import Felgo 3.0
import QtQuick 2.0
import My 1.0
import Users 1.0
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"





//    NavigationStack {



//        Page {
//            title: user.okk
//            Image {
//                source: "../assets/felgo-logo.png"
//                anchors.centerIn: parent
//            }
//        }
//    }

    MyObject{
        id:my
    }
    Users{
        id:user;
    }

    Image {

        anchors.fill: parent
        id: imgage1
        source:user
    }
    Button{
//        text: user.okk
        onClicked: {
//            user.typeTransition()
//            console.log(user.name)
        }
    }
}
