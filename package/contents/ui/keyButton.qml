import QtQuick
import org.kde.plasma.components as PlasmaComponents

PlasmaComponents.Button {
    id: keyButton
    width: parent.width / 10 - 10
    height: parent.height / 5 - 10
    text: keyLabel

    // Custom property for key label
    property string keyLabel: ""

    // Styling for the button
    background: Rectangle {
        color: "#444444" // Key background color
        radius: 4
    }

    // Signal to emit when a key is pressed
    signal keyPressed(string key)

    // Handle button click and emit signal
    onClicked: {
        keyPressed(keyLabel)
    }
}
