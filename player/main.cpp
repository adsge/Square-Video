#include <QApplication>
#include <FelgoApplication>

#include <QQmlApplicationEngine>
#include<QQmlContext>
#include"myobject.h"
#include"users.h"

#include<QSqlDatabase>
#include<iostream>
#include<QSqlQuery>

// uncomment this line to add the Live Client Module and use live reloading with your custom C++ code
//#include <FelgoLiveClient>

int main(int argc, char *argv[])
{

    QApplication app(argc, argv);

    FelgoApplication felgo;

    // Use platform-specific fonts instead of Felgo's default font
    felgo.setPreservePlatformFonts(true);

    QQmlApplicationEngine engine;
    felgo.initialize(&engine);
    QQmlContext *context=engine.rootContext();
    qmlRegisterType<MyObject>("My",1,0,"MyObject");
    qmlRegisterType<Users>("Users",1,0,"Users");
    //context->setContextProperty("Text1","wwwww");
    const QUrl url(QStringLiteral("qml/Main.qml"));


    MyObject kkk;

    kkk.saveFile("/root/cc/save.txt");

    // Set an optional license key from project file
    // This does not work if using Felgo Live, only for Felgo Cloud Builds and local builds
    felgo.setLicenseKey(PRODUCT_LICENSE_KEY);

    // use this during development
    // for PUBLISHING, use the entry point below
    felgo.setMainQmlFileName(QStringLiteral("qml/Main.qml"));

    // use this instead of the above call to avoid deployment of the qml files and compile them into the binary with qt's resource system qrc
    // this is the preferred deployment option for publishing games to the app stores, because then your qml files and js files are protected
    // to avoid deployment of your qml files and images, also comment the DEPLOYMENTFOLDERS command in the .pro file
    // also see the .pro file for more details
    //felgo.setMainQmlFileName(QStringLiteral("qrc:/qml/Main.qml"));

    engine.load(QUrl(felgo.mainQmlFileName()));

    // to start your project as Live Client, comment (remove) the lines "felgo.setMainQmlFileName ..." & "engine.load ...",
    // and uncomment the line below
    //FelgoLiveClient client (&engine);

    Users a;
    QStringList drivers=QSqlDatabase::drivers();
    foreach(QString driver,drivers)
        qDebug()<<driver;

    QSqlDatabase db=QSqlDatabase::addDatabase("QSQLITE");

     db.setDatabaseName("/root/imp.db");
     db.setUserName("user1");
     db.setPassword("123456");
     bool ok=db.open();
     if(ok)
     {
         std::cout<<"true";
     }
     else{
         std::cout<<"false";
     }
     QSqlQuery query("imp.db");
     query.exec("insert into stu(ID) values(9)");


    return app.exec();
}
