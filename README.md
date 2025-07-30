# 🪨 Rock, Paper, Scissors – iOS Game (SwiftUI)

A fast-paced, logic-driven iOS game where players go head-to-head with the CPU in a classic match of Rock, Paper, Scissors — with a twist. Instead of simply playing to win, the CPU randomly prompts the player to either **win** or **lose** the round, challenging them to think beyond instinct.

---

## 📱 Features

- 🎮 **Interactive Gameplay** – Player chooses Rock, Paper, or Scissors to match the CPU's prompt.
- 🧠 **Strategic Decision Making** – CPU randomly asks you to either *win* or *lose*, forcing creative choices.
- 🧾 **Score Tracking** – Total score out of 10 rounds.
- ✨ **Smooth Animations & Responsive UI** – Built with SwiftUI for a sleek and consistent experience.
- 🔁 **Restart Game** – Automatically resets after 10 rounds.

---

## 🖼️ Preview

| CPU Prompting | Game Over |
|:-------------:|:---------:|
| :<img width="300" height="500" alt="Screenshot 2025-07-30 at 10 54 06 PM" src="https://github.com/user-attachments/assets/a0107b7a-1b93-4777-9bf1-56d9a504dd0b" /> | <img width="300" height="500" alt="image" src="https://github.com/user-attachments/assets/4d141529-b22a-474c-9359-1dc5e24af78a" />
 |


---

## 🧩 Game Logic

- CPU picks one of: `["Rock", "Paper", "Scissors"]`
- CPU then randomly prompts either: `"WIN"` or `"LOSE"`
- Based on the CPU's pick and prompt, the player must respond with the **correct move** to either defeat or be defeated.
- Example:
  - CPU picks **Rock**, prompts **WIN** → player must pick **Paper**
  - CPU picks **Paper**, prompts **LOSE** → player must pick **Rock**

---

## 🚀 Getting Started

### Requirements
- Xcode 15+
- iOS 17+
- Swift 5.9+

### Run Locally
1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/rock-paper-scissors-ios.git
2. Open the .xcodeproj file in Xcode.
3. Build and run on a simulator or device.

### 📌 Future Improvements

Add haptic feedback and sound effects
Enhance visual feedback with animations
Include a scoreboard history
Add difficulty levels or a multiplayer mode

### 🤝 License

This project is licensed under the MIT License.

### 🙌 Acknowledgements

Built using SwiftUI
Inspired by Paul Hudson’s 100 Days of SwiftUI

