import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    override func awakeFromNib() {
        let icon = NSImage(imageLiteralResourceName: "statusIcon")

        statusItem.menu = statusMenu
        statusItem.image = icon
    }

    @IBAction func lostTheGameClicked(_ sender: NSMenuItem) {
        // TODO: Reset streak
    }

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
