#include <QApplication>
//#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "Class/ControllMainAPP.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
//    QGuiApplication app(argc, argv);

    ControllMainAPP::getInstance()->initControlMainApp();
    Qt::WindowFlags flags = Qt::Window;
    flags |= Qt::MSWindowsFixedSizeDialogHint;
//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
