import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    @IBOutlet weak var currentStreakItem: NSMenuItem!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let gameStats = GameStats()
    var timer = Timer()

    override func awakeFromNib() {
        let icon = NSImage(imageLiteralResourceName: "statusIcon")

        statusItem.menu = statusMenu
        statusItem.image = icon

        updateStreak()
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(self.updateStreak),
            userInfo: nil,
            repeats: true
        )
    }

    @objc func updateStreak() {
        let currentStreak = gameStats.getCurrentStreak()
        currentStreakItem.title = currentStreak
    }

    @IBAction func lostTheGameClicked(_ sender: NSMenuItem) {
        gameStats.resetCurrentStreak()
        updateStreak()
    }

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
