import QtQuick 6.0
import org.kde.plasma.components 6.0 as PlasmaComponents

Item {
    id: keyboard
    width: parent.width
    height: parent.height

    // Grid layout to organize keys
    GridLayout {
        id: keyboardLayout
        columns: 10
        anchors.fill: parent
        anchors.margins: 10

        // Repeater for creating multiple KeyButton components
        Repeater {
            model: 30 // Number of keys
            delegate: KeyButton {
                keyLabel: "Key" + modelData // Pass dummy key data
                onKeyPressed: {
                    // TODO: Handle key press logic, passing the event to backend
                    // Example: backend.handleKeyPress(keyLabel)
                    console.log("Key pressed: " + keyLabel)
                }
            }
        }
    }
}
