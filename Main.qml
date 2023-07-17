import QtQuick
import QtQuick.Window
import MyModule

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyComponent {
    }
    component UnknownComponent: Item {
    }
    UnknownComponent {
    }

    Item {
        id: myItem

        property int i
    }
    property int i
    property int childI: myItem.i

    function getI() {
        f(1, 2, 3);
        return myItem.i;
    }

    function f(a, b, c) {
        if (a) {
            b = a + b;
        } else {
            a = a + myItem.i;
        }
        let sum = 0;
        for (i = a; i < b; i = i + c) {
            while (a) {
                sum = sum + b - c + a * i;
                {
                    let i = 32 // not a definition nor usage of i
                    i = 44 // neither
                }
            }
        }
        console.log(sum);
    }

    property UnknownComponent myComponent
}
