#include "users.h"

Users::Users(QObject *parent) : QObject(parent)

{

    db=QSqlDatabase::addDatabase("QSQLITE");

     db.setDatabaseName("/root/tzl.db");
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

     QSqlQuery query("tzl.db");
    query.exec("insert into uto(url) values('/root/c++/qt-midterm2-paper/images/20.jpg')");
}

void Users::readUserInfo()
{
    std::ifstream ifs;
    std::vector<Users>info;
    ifs.open("/root/cc/infomation.txt",std::ios::in);
    if(ifs.is_open())
    {
        Users a;
    }
}

void Users::typeTransition()
{
    this->m_name="/root/c++/qt-midterm2-paper/images/04.jpg";
}



std::istream &operator>>(std::istream &is, Users &a)
{
    is>>a.m_name>>a.m_sex>>a.m_age>>a.m_Bconin>>a.m_conin>>a.m_account>>a.m_password;
    return is;
}

std::istream &operator>>(std::istream &is,std::vector<std::string> a)
{
    std::string b;
    while(is>>b)
    {
        a.push_back(b);
    }
    return is;
}






int Users::age() const
{
    return m_age;
}

void Users::setAge(int age)
{
    m_age = age;
}

int Users::Bconin() const
{
    return m_Bconin;
}

void Users::setBconin(int Bconin)
{
    m_Bconin = Bconin;
}

int Users::conin() const
{
    return m_conin;
}

void Users::setConin(int conin)
{
    m_conin = conin;
}

int Users::account() const
{
    return m_account;
}

void Users::setAccount(int account)
{
    m_account = account;
}



const QString &Users::getOkk() const
{
    return okk;
}

void Users::setOkk(const QString &newOkk)
{
    if (okk == newOkk)
        return;
    okk = newOkk;
    emit okkChanged();
}

const QString &Users::getPassword() const
{
    return password;
}

void Users::setPassword(const QString &newPassword)
{
    if (password == newPassword)
        return;
    password = newPassword;
    emit passwordChanged();
}

const QString &Users::getSex() const
{
    return sex;
}

void Users::setSex(const QString &newSex)
{
    if (sex == newSex)
        return;
    sex = newSex;
    emit sexChanged();
}

const QString &Users::getName() const
{
    return name;
}

void Users::setName(const QString &newName)
{
    if (name == newName)
        return;
    name = newName;
    emit nameChanged();
}

const QString &Users::getPhoto() const
{
    return photo;
}

void Users::setPhoto(const QString &newPhoto)
{
    if (photo == newPhoto)
        return;
    photo = newPhoto;
    emit photoChanged();
}

