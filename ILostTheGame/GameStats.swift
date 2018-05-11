import Foundation

class GameStats {
    func getCurrentStreak() -> String {
        let interval = UserDefaults.standard.double(forKey: "currentStreakInterval")

        if interval == 0 {
            resetCurrentStreak()
            return getCurrentStreak()
        }

        let date = Date(timeIntervalSince1970: interval)
        let elapsed = Date().timeIntervalSince(date)
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full

        return formatter.string(from: elapsed)!
    }

    func resetCurrentStreak() {
        let date = Date()
        UserDefaults.standard.set(date.timeIntervalSince1970, forKey: "currentStreakInterval")
    }
}
