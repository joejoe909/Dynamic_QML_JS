//You need these
var component;
var sprite;

//Toggle between this... (see line 29)
// NOTE: this code is asyncronous...

//function createSpriteObjects() {
//    component = Qt.createComponent("Sprite.qml");
//    if (component.status == Component.Ready)
//        finishCreation();
//    else
//        component.statusChanged.connect(finishCreation);
//}

//function finishCreation() {
//    if (component.status == Component.Ready) {
//        sprite = component.createObject(appWindow, {x: 100, y: 100});
//        if (sprite == null) {
//            // Error Handling
//            console.log("Error creating object");
//        }
//    } else if (component.status == Component.Error) {
//        // Error Handling
//        console.log("Error loading component:", component.errorString());
//    }
//}


//(from line 5) ...and this...
//NOTE: if the file is local and you don't require asyncronous functionality...
function createSpriteObjects() {
    component = Qt.createComponent("./Sprite.qml");
    sprite = component.createObject(appWindow, {x: 100, y: 100});

    if (sprite == null) {
        // Error Handling
        console.log("Error creating object");
    }
}
