import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let gameStats = GameStats()

    override func awakeFromNib() {
        let icon = NSImage(imageLiteralResourceName: "statusIcon")

        statusItem.menu = statusMenu
        statusItem.image = icon

        updateStreak()
    }

    func updateStreak() {
        let currentStreak = gameStats.getCurrentStreak()
        NSLog(String(currentStreak))
    }

    @IBAction func lostTheGameClicked(_ sender: NSMenuItem) {
        gameStats.resetCurrentStreak()
        updateStreak()
    }

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
