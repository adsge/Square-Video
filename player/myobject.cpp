#include "myobject.h"

MyObject::MyObject(QObject *parent) : QObject(parent)
{

}

void MyObject::openFile(std::string filename)
{
    std::vector<std::string> local;
    std::ifstream ifs;
    ifs.open(filename, std::ios::in);

    if(ifs.is_open())
    {
        std::string tem;
        while(ifs>>tem)
        {
            local.push_back(tem);
            std::cout<<tem;
        }
    }
    ifs.close();
}

void MyObject::saveFile(std::string filename)
{
    std::ofstream ofs;
    ofs.open(filename,std::ios::app);
    if(ofs.is_open())
    {
        ofs<<"123\n";
    }
    ofs.close();

}

void MyObject::cSlot(std::string aaa)
{

}

