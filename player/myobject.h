#ifndef MYOBJECT_H
#define MYOBJECT_H

#include <QObject>
#include<QtSql>
#include<iostream>
#include<fstream>
#include<vector>
#include<QtQml>

class MyObject : public QObject
{
    Q_OBJECT
    QML_ELEMENT
public:
    explicit MyObject(QObject *parent = nullptr);

   Q_INVOKABLE void openFile(std::string filename);
    void saveFile(std::string filename);
    void showUserInfo();


public slots:
    void  cSlot(std::string aaa);


signals:
    void cppSig(int i,QString s);
};

#endif // MYOBJECT_H
