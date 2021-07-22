#ifndef CONTROLLMAINAPP_H
#define CONTROLLMAINAPP_H
#include <QQmlApplicationEngine>
#include <Class/UIBridge.h>
#include <QQmlContext>

class ControllMainAPP : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE void initControlMainApp();
    static ControllMainAPP* getInstance();
private:
    ControllMainAPP();
    static ControllMainAPP *m_instance;
    QQmlApplicationEngine m_qmlEngine;
    QObject* m_mainWindow = nullptr;

    UIBridge* m_uiBridge = nullptr;

public slots:
    void handleHMIEvent(QString str1, QString str2);
};

#endif // CONTROLLMAINAPP_H
