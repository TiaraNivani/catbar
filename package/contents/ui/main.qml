import QtQuick
import org.kde.plasma.core as PlasmaCore

Plasmoid {
  id: catBar
  width: parent.width
  height: 200
  visible: false

  Behaviour on y {
    enable: visible
    NumberAnimation {
      duration: 300
      easing.type: easing.InOutQuad
    }
  }

  y: visible ? 0: -height

  // Keyboard component
  Keyboard {
    id: keyboard
    anchors.fill: parent
    // TODO: Pass data from backend
  }

  Keys.onPressed: {
    // TODO: Trigger visibility toggle using key event (example)
    if (event.key === Qt.Key_F12) {
      visibile = !visible
    }
  }
}
