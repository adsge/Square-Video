#ifndef USERS_H
#define USERS_H

#include <QObject>
#include<fstream>
#include<vector>
#include<iostream>
#include<QtQml>
#include<QSqlDatabase>
#include<iostream>
#include<QSqlQuery>

class Users : public QObject
{
    Q_OBJECT
    QML_ELEMENT

    Q_PROPERTY(QList<QString> a READ getA WRITE setA NOTIFY aChanged)
//用户表的 id  姓名  头像  年龄
    Q_PROPERTY(QList<int> id READ getId WRITE setId NOTIFY idChanged)
    Q_PROPERTY(QList<QString> name READ getName WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QList<QString> touxiang READ getTouxiang WRITE setTouxiang NOTIFY touxiangChanged)
    Q_PROPERTY(QList<int> age READ getAge WRITE setAge NOTIFY ageChanged)

//收藏夹的 用户名 url
    Q_PROPERTY(QList<QString> usname READ getUsname WRITE setUsname NOTIFY usnameChanged)
    Q_PROPERTY(QList<QString> url READ getUrl WRITE setUrl NOTIFY urlChanged)
    Q_PROPERTY(QList<QString> myurl READ getMyurl WRITE setMyurl NOTIFY myurlChanged)

public:
    explicit Users(QObject *parent = nullptr);




    //用户表的 id  姓名  头像  年龄
    void loaduinfo();
    Q_INVOKABLE int uid(QString a);
//    Q_INVOKABLE QString uname(QString a);
    Q_INVOKABLE QString utouxiang(QString a);
    Q_INVOKABLE int uage(QString a);

//收藏夹的 用户名 url
    void loadushoucangjia();
    Q_INVOKABLE void showMyurl(QString name);




    const QList<QString> &getA() const;
    void setA(const QList<QString> &newA);

//用户表的 id  姓名  头像  年龄
        const QList<int> &getId() const;
        void setId(const QList<int> &newId);
        const QList<QString> &getName() const;
        void setName(const QList<QString> &newName);

        const QList<QString> &getTouxiang() const;
        void setTouxiang(const QList<QString> &newTouxiang);

        const QList<int> &getAge() const;
        void setAge(const QList<int> &newAge);


//收藏夹的 用户名 url
        const QList<QString> &getUsname() const;
        void setUsname(const QList<QString> &newUsname);

        const QList<QString> &getUrl() const;
        void setUrl(const QList<QString> &newUrl);

        const QList<QString> &getMyurl() const;
        void setMyurl(const QList<QString> &newMyurl);

signals:
    void aChanged();
//用户表的 id  姓名  头像  年龄
    void idChanged();
    void nameChanged();
    void touxiangChanged();
    void ageChanged();


//收藏夹的 用户名 url
    void usnameChanged();
    void urlChanged();
    void myurlChanged();

public:

//用户表的 id  姓名  头像  年龄
    QList<int>id;
    QList<QString>name;
    QList<QString>touxiang;
    QList<int>age;

//收藏夹的 用户名 url
    QList<QString>usname;
    QList<QString>url;
    QList<QString>myurl;


    QList<QString>a;
    std::vector<QString>shoucangjia;
    QSqlDatabase db;



};

#endif // USERS_H
