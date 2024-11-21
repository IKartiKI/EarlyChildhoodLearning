# EarlyChildhoodLearning
# SPACE for ECE

**SPACE for ECE** is an entrepreneurial initiative aimed at consolidating a decade-long experience in Early Childhood Education (ECE) through collaboration with non-profits, informal learning centers, and global clients. The **SpacECE India Foundation** serves as the non-profit arm, focusing specifically on government partnerships to enhance educational outcomes for young children.

## Table of Contents
- [Features](#features)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

### 🗓️ Home Activity Calendar
- **Weekly Calendar**: Displays simple, age-appropriate activities for toddlers (e.g., "Color Sorting Game," "Story Time").
- **Activity Details**: Each activity includes a brief description and required materials.

### 📈 Progress Tracker
- **Log Activities**: Allow parents to log completed activities.
- **Track Milestones**: Monitor child’s progress with milestones such as "Learned new colors" and "Improved fine motor skills".
- **Edit & Remove**: Parents can edit or remove existing milestones.

### 💡 Parent Tips
- **Daily Tips**: Provides daily parenting tips or short articles on child development, nutrition, or play-based learning.

### 🔔 Push Notifications
- **Reminders**: Sends reminders for daily activities or important updates from the app using Firebase Cloud Messaging (FCM).

### 📱 User-Friendly Interface
- **Kid-Friendly Design**: Bright colors, gradients, and playful icons tailored for young children and their parents.
- **Intuitive Navigation**: Easy access to all features with a clean and organized layout.

## Screenshots

![Home Screen](screenshots/home_screen.png)
*Home screen with navigation to key features.*

![Activity Calendar](screenshots/activity_calendar.png)
*Weekly activity calendar showcasing various educational activities.*

![Progress Tracker](screenshots/progress_tracker.png)
*Progress tracker with editable milestones.*

![Parent Tips](screenshots/parent_tips.png)
*Daily parenting tips and articles.*

## Getting Started

### Prerequisites
- **Flutter SDK**: [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Android Studio** or **VS Code**: Recommended IDEs for Flutter development.
- **Firebase Account**: [Set up Firebase](https://firebase.google.com/docs/flutter/setup) for push notifications.

### Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/spacECE_ECE_App.git
   cd spacECE_ECE_App
2. **Install Dependies**
   ```bash
   flutter pub get
3. **Configure Firebase**
  - Go to the Firebase Console and create a new project.
  - Add your Android app with the package name specified in android/app/src/main/AndroidManifest.xml.
  - Download the google-services.json file and place it in android/app/.
  - Ensure the Firebase SDK is added in android/build.gradle and android/app/build.gradle as per Firebase setup instructions.
4. **Run the app**
    ```bash
    flutter run
## Usage
1. **Home Screen**

  - Navigate to different sections: Activity Calendar, Progress Tracker, Parent Tips, and Notifications.
2. **Activity Calendar**

  - View weekly activities designed for toddlers.
  - Each activity displays necessary materials and a brief description.
3. **Progress Tracker**

  - Add new milestones with titles and deadlines.
  - Edit or remove existing milestones.
  - Track your child’s developmental progress over time.
4. **Parent Tips**

  - Access daily tips and articles to support your child’s growth and development.
5. **Push Notifications**

  - Receive reminders for scheduled activities and important updates directly to your device.
