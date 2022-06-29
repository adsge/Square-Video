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
    Q_PROPERTY(int m_age READ age WRITE setAge NOTIFY m_ageChange)
    Q_PROPERTY(int m_Bconin READ Bconin WRITE setBconin NOTIFY m_BconinChange)
    Q_PROPERTY(int m_conin READ conin WRITE setConin NOTIFY m_coninChange)
    Q_PROPERTY(int m_account READ account WRITE setAccount NOTIFY m_accountChange)

    Q_PROPERTY(QString okk READ getOkk WRITE setOkk NOTIFY okkChanged)

    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString sex READ getSex WRITE setSex NOTIFY sexChanged)
    Q_PROPERTY(QString password READ getPassword WRITE setPassword NOTIFY passwordChanged)
    Q_PROPERTY(QString photo READ getPhoto WRITE setPhoto NOTIFY photoChanged)

public:
    explicit Users(QObject *parent = nullptr);
    Q_INVOKABLE void readUserInfo();
    friend std::istream &operator>>(std::istream &is,Users &a);
    QString setUrl()
    {

    }

    Q_INVOKABLE void typeTransition();
    void openShoucangjia();







    int age() const;
    void setAge(int age);

    int Bconin() const;
    void setBconin(int Bconin);

    int conin() const;
    void setConin(int conin);

    int account() const;
    void setAccount(int account);


    const QString &getOkk() const;
    void setOkk(const QString &newOkk);

    QString getOk() const;
    void setOk(const QString &value);

    const QString &getName() const;
    void setName(const QString &newName);
    const QString &getSex() const;
    void setSex(const QString &newSex);

    const QString &getPassword() const;
    void setPassword(const QString &newPassword);

    const QString &getPhoto() const;
    void setPhoto(const QString &newPhoto);
signals:
    void nameChanged();
    void sexChanged();
    void passwordChanged();
    void photoChanged();

    void m_ageChange();
    void m_BconinChange();
    void m_coninChange();
    void m_accountChange();

    void okkChanged();
public:
    //姓名,性别,年龄
    std::string m_name="/root/c++/qt-midterm2-paper/images/02.jpg";
    std::string m_sex="man";
    int m_age=100;

    //B币和硬币
    int m_Bconin;
    int m_conin;
    QString okk=QString::fromStdString(m_name);
    //账户信息
    int m_account;
    std::string  m_password;
    std::string m_photo;
    std::vector<QString*>shoucangjia;
    std::vector<Users*>m_users;
    QSqlDatabase db;


    //
    QString name=QString::fromStdString(m_name);
    QString sex=QString::fromStdString(m_sex);

    QString password=QString::fromStdString(m_password);
    QString photo=QString::fromStdString(m_photo);


};

#endif // USERS_H
