/****************************************************************************
** Meta object code from reading C++ file 'users.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.3.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "users.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'users.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.3.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Users_t {
    const uint offsetsAndSize[44];
    char stringdata0[216];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(offsetof(qt_meta_stringdata_Users_t, stringdata0) + ofs), len 
static const qt_meta_stringdata_Users_t qt_meta_stringdata_Users = {
    {
QT_MOC_LITERAL(0, 5), // "Users"
QT_MOC_LITERAL(6, 11), // "nameChanged"
QT_MOC_LITERAL(18, 0), // ""
QT_MOC_LITERAL(19, 10), // "sexChanged"
QT_MOC_LITERAL(30, 15), // "passwordChanged"
QT_MOC_LITERAL(46, 12), // "photoChanged"
QT_MOC_LITERAL(59, 11), // "m_ageChange"
QT_MOC_LITERAL(71, 14), // "m_BconinChange"
QT_MOC_LITERAL(86, 13), // "m_coninChange"
QT_MOC_LITERAL(100, 15), // "m_accountChange"
QT_MOC_LITERAL(116, 10), // "okkChanged"
QT_MOC_LITERAL(127, 12), // "readUserInfo"
QT_MOC_LITERAL(140, 14), // "typeTransition"
QT_MOC_LITERAL(155, 5), // "m_age"
QT_MOC_LITERAL(161, 8), // "m_Bconin"
QT_MOC_LITERAL(170, 7), // "m_conin"
QT_MOC_LITERAL(178, 9), // "m_account"
QT_MOC_LITERAL(188, 3), // "okk"
QT_MOC_LITERAL(192, 4), // "name"
QT_MOC_LITERAL(197, 3), // "sex"
QT_MOC_LITERAL(201, 8), // "password"
QT_MOC_LITERAL(210, 5) // "photo"

    },
    "Users\0nameChanged\0\0sexChanged\0"
    "passwordChanged\0photoChanged\0m_ageChange\0"
    "m_BconinChange\0m_coninChange\0"
    "m_accountChange\0okkChanged\0readUserInfo\0"
    "typeTransition\0m_age\0m_Bconin\0m_conin\0"
    "m_account\0okk\0name\0sex\0password\0photo"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Users[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       9,   91, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   80,    2, 0x06,   10 /* Public */,
       3,    0,   81,    2, 0x06,   11 /* Public */,
       4,    0,   82,    2, 0x06,   12 /* Public */,
       5,    0,   83,    2, 0x06,   13 /* Public */,
       6,    0,   84,    2, 0x06,   14 /* Public */,
       7,    0,   85,    2, 0x06,   15 /* Public */,
       8,    0,   86,    2, 0x06,   16 /* Public */,
       9,    0,   87,    2, 0x06,   17 /* Public */,
      10,    0,   88,    2, 0x06,   18 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      11,    0,   89,    2, 0x02,   19 /* Public */,
      12,    0,   90,    2, 0x02,   20 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
      13, QMetaType::Int, 0x00015003, uint(4), 0,
      14, QMetaType::Int, 0x00015003, uint(5), 0,
      15, QMetaType::Int, 0x00015003, uint(6), 0,
      16, QMetaType::Int, 0x00015003, uint(7), 0,
      17, QMetaType::QString, 0x00015103, uint(8), 0,
      18, QMetaType::QString, 0x00015103, uint(0), 0,
      19, QMetaType::QString, 0x00015103, uint(1), 0,
      20, QMetaType::QString, 0x00015103, uint(2), 0,
      21, QMetaType::QString, 0x00015103, uint(3), 0,

       0        // eod
};

void Users::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Users *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->nameChanged(); break;
        case 1: _t->sexChanged(); break;
        case 2: _t->passwordChanged(); break;
        case 3: _t->photoChanged(); break;
        case 4: _t->m_ageChange(); break;
        case 5: _t->m_BconinChange(); break;
        case 6: _t->m_coninChange(); break;
        case 7: _t->m_accountChange(); break;
        case 8: _t->okkChanged(); break;
        case 9: _t->readUserInfo(); break;
        case 10: _t->typeTransition(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::nameChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::sexChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::passwordChanged)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::photoChanged)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::m_ageChange)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::m_BconinChange)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::m_coninChange)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::m_accountChange)) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (Users::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Users::okkChanged)) {
                *result = 8;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Users *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = _t->age(); break;
        case 1: *reinterpret_cast< int*>(_v) = _t->Bconin(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->conin(); break;
        case 3: *reinterpret_cast< int*>(_v) = _t->account(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->getOkk(); break;
        case 5: *reinterpret_cast< QString*>(_v) = _t->getName(); break;
        case 6: *reinterpret_cast< QString*>(_v) = _t->getSex(); break;
        case 7: *reinterpret_cast< QString*>(_v) = _t->getPassword(); break;
        case 8: *reinterpret_cast< QString*>(_v) = _t->getPhoto(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Users *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setAge(*reinterpret_cast< int*>(_v)); break;
        case 1: _t->setBconin(*reinterpret_cast< int*>(_v)); break;
        case 2: _t->setConin(*reinterpret_cast< int*>(_v)); break;
        case 3: _t->setAccount(*reinterpret_cast< int*>(_v)); break;
        case 4: _t->setOkk(*reinterpret_cast< QString*>(_v)); break;
        case 5: _t->setName(*reinterpret_cast< QString*>(_v)); break;
        case 6: _t->setSex(*reinterpret_cast< QString*>(_v)); break;
        case 7: _t->setPassword(*reinterpret_cast< QString*>(_v)); break;
        case 8: _t->setPhoto(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
#endif // QT_NO_PROPERTIES
    (void)_a;
}

const QMetaObject Users::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_Users.offsetsAndSize,
    qt_meta_data_Users,
    qt_static_metacall,
    nullptr,
qt_incomplete_metaTypeArray<qt_meta_stringdata_Users_t
, QtPrivate::TypeAndForceComplete<int, std::true_type>, QtPrivate::TypeAndForceComplete<int, std::true_type>, QtPrivate::TypeAndForceComplete<int, std::true_type>, QtPrivate::TypeAndForceComplete<int, std::true_type>, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<QString, std::true_type>, QtPrivate::TypeAndForceComplete<Users, std::true_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>

, QtPrivate::TypeAndForceComplete<void, std::false_type>, QtPrivate::TypeAndForceComplete<void, std::false_type>

>,
    nullptr
} };


const QMetaObject *Users::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Users::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Users.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Users::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 11;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Users::nameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Users::sexChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Users::passwordChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Users::photoChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void Users::m_ageChange()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void Users::m_BconinChange()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void Users::m_coninChange()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void Users::m_accountChange()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void Users::okkChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
