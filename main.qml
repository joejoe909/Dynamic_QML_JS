import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import "./componentCreation.js" as MyScript

//Let Explore Dynamic creation with Javascript and QML.
// Joe Farrish.
// Toggle the comment here and (see line 54)

//here we use a button to draw out 100 squares into a Flow Component
// line 27 onclick function will create a QML object Dynamically.
Window {
    id: mainWin
    visible: true
    width: 360
    height: 360
    color: "orange"

    Button{
        id: runaloop
        x: 0
        y: 0
        width: parent.width
        height: 50

        text: "run a loop"
        onClicked: function(){
            var mYgray = '"gray"', mYblack = '"black"'
            var currentColor = mYblack
            for(var i=0; i < 100; i++)
            {
                console.log("darwing " + i)
                if(currentColor === mYblack) currentColor = mYgray
                else currentColor = mYblack
               //Dynamically create the object - note we are feeding a string of QML into the Qt.createQmlObject().
                var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: ' + currentColor + '; width: 40; height: 40}', myFlow, "dynamicSnippet" + i);

            }
        }
    }

    Flow {
        id: myFlow
        x: parent.x + 10
        y: 60
        height: parent.height
        width: parent.width - 10
        anchors.margins: 4
        spacing: 10

    }
}



//Here we use the Javascript file to dynamically create a QML object.
//(from line 6)....and this....



//Window{
//        id: mainWin
//        visible: true
//        width: 501
//        height: 501
//        color: "orange"

//    Rectangle {
//        id: appWindow
//        width: 300; height: 300
//        anchors.verticalCenter: parent.verticalCenter
//        anchors.horizontalCenter: parent.horizontalCenter

//        Component.onCompleted: MyScript.createSpriteObjects();
//    }

//}
