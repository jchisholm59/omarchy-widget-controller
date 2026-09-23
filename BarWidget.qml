import QtQuick
import Quickshell
import qs.Commons
import qs.Ui

BarWidget {
  id: root
  moduleName: "jim.widget-controller"

  implicitWidth: button.implicitWidth
  implicitHeight: button.implicitHeight

  function open() {
    // Bundled inside the plugin directory (not a system-wide omarchy-*
    // binary, since this isn't a first-party plugin) so `omarchy plugin add`
    // alone sets a fresh machine up — no separate PATH install step.
    if (root.bar) root.bar.run("$HOME/.config/omarchy/plugins/jim.widget-controller/bin/omarchy-widget-controller")
  }

  BarIconButton {
    id: button
    anchors.fill: parent
    bar: root.bar
    text: "󰐱"
    slotSize: Style.bar.statusSlot
    fontSize: Style.font.caption
    tooltipText: "Widget Controller"
    onPressed: root.open()
  }
}
