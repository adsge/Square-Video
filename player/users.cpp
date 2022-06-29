#include "users.h"

Users::Users(QObject *parent) : QObject(parent)

{

    db=QSqlDatabase::addDatabase("QSQLITE");

     db.setDatabaseName("/root/imp.db");
     db.setUserName("user2");
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
     query.exec("select * from utoo");
     while(query.next())
     {
         int i=0;
         QString aa=query.value(0).toString();
         a.append(aa);
         i++;
        std::cout<<i;
     }
}




void Users::loaduinfo()
{
    QSqlQuery query("imp.db");
    query.exec("select * from users");
    while(query.next())
    {
        int a=query.value(0).toInt();
        QString b=query.value(1).toString();
        QString c=query.value(2).toString();
        int d=query.value(3).toInt();

        qDebug()<<a<<b<<c<<d;
        id.append(a);
        name.append(b);
        touxiang.append(c);
        age.append(d);
    }
}


int Users::uid(QString a)
{
    loaduinfo();

    int i=0;
    for(;i<name.length();i++)
    {
        if(name[i]==a)
        {
            return id[i];
        }
    }
    if(i==id.length()+1)
    {
        std::cout<<"未找到该用户。";
    }

}

QString Users::utouxiang(QString a)
{
    loaduinfo();

    int i=0;
    for(;i<name.length();i++)
    {
        if(name[i]==a)
        {
            return touxiang[i];
        }
    }
    if(i==id.length()+1)
    {
        std::cout<<"未找到该用户。";
    }
}

int Users::uage(QString a)
{
    loaduinfo();

    int i=0;
    for(;i<name.length();i++)
    {
        if(name[i]==a)
        {
            return age[i];
        }
    }
    if(i==id.length()+1)
    {
        std::cout<<"未找到该用户。";
    }
}










const QList<QString> &Users::getA() const
{
    return a;
}

void Users::setA(const QList<QString> &newA)
{
    if (a == newA)
        return;
    a = newA;
    emit aChanged();
}

const QList<int> &Users::getAge() const
{
    return age;
}

void Users::setAge(const QList<int> &newAge)
{
    if (age == newAge)
        return;
    age = newAge;
    emit ageChanged();
}

const QList<QString> &Users::getTouxiang() const
{
    return touxiang;
}

void Users::setTouxiang(const QList<QString> &newTouxiang)
{
    if (touxiang == newTouxiang)
        return;
    touxiang = newTouxiang;
    emit touxiangChanged();
}

const QList<QString> &Users::getName() const
{
    return name;
}

void Users::setName(const QList<QString> &newName)
{
    if (name == newName)
        return;
    name = newName;
    emit nameChanged();
}

const QList<int> &Users::getId() const
{
    return id;
}

void Users::setId(const QList<int> &newId)
{
    if (id == newId)
        return;
    id = newId;
    emit idChanged();
}






