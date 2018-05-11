import Foundation

class GameStats {
    func formatDuration(elapsed: Int) -> (h: Int, m: Int, s: Int) {
        let h = elapsed / 3600
        let m = (elapsed % 3600) / 60
        let s = (elapsed % 3600) % 60

        return (h, m, s)
    }

    func getCurrentStreak() -> String {
        let interval = UserDefaults.standard.double(forKey: "currentStreakInterval")

        if interval == 0 {
            resetCurrentStreak()
            return getCurrentStreak()
        }

        let date = Date(timeIntervalSince1970: interval)
        let elapsed = Date().timeIntervalSince(date)
        let duration = formatDuration(elapsed: Int(elapsed))

        return String(format: "%d hours, %d minutes, %d seconds", duration.h, duration.m, duration.s)
    }

    func resetCurrentStreak() {
        let date = Date()
        UserDefaults.standard.set(date.timeIntervalSince1970, forKey: "currentStreakInterval")
    }
}
