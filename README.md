# Pet Clinic as Tutorial

If you are also looking for a simple but end to end fully functional tutorial, including database, sql, Spring, Flutter, here is the right place for you. 

This tutorial also provides step by step instruction to help reads with little previous experience to follow and try out your first simple but working application. 

## Software requirements

- Operating system
  - macOS 10.15 (Catalina)+
  - Windows(?)

- Dev Tools 
  - Git 2.27+
  - JDK 17+
  - Flutter SDK
  
- Android
  - Android Studio 2023.1 (Hedgehog)+
  - Flutter plugin for IntelliJ

- iOS
  - Xcode 15+
  - CocoaPods 1.13+

## Step by step

- Dev Tools
  - Git 2.27+
    - Check Git version
      - ```
        $ git --version
        git version 2.39.3 (Apple Git-145)
        ```
    - Install Git
      - ```
        brew install git
        ```
  - JDK 17+
    - Check JDKs
      `$ /usr/libexec/java_home -V`
    - Install
      - Download from [Azul Zulu](https://www.azul.com/downloads/?package=jdk#zulu), select Java 17 (LTS)
      - Install downloaded dmg
    - In ~/.zshrc, add
      ```
      $ export JAVA_HOME=$(/usr/libexec/java_home -v 17.0.10)
      $ export PATH=$HOME/development/flutter/bin:$PATH
      ```
    - Check JDKs again
      ```
      $ /usr/libexec/java_home -V`
      ```

  - Flutter SDK
    - Install
      - [Download](https://docs.flutter.dev/get-started/install/macos/mobile-ios?tab=download)
        - [Intel Processor](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_3.19.5-stable.zip)
        - [Apple Silicon](https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.19.5-stable.zip)
      - Create a folder where you can install Flutter.
        - Consider creating a directory at `~/development/`.
      - Extract the zip file into the directory you want to store the Flutter SDK.
        ```
        $ unzip ~/Downloads/flutter_macos_3.19.5-stable.zip ~/development/
        ```
    - Add Flutter to your PATH
      - Copy the following line and paste it at the end of your ~/.zshrc file. 
        ```
        $ export PATH=$HOME/development/flutter/bin:$PATH
        $ source ~/.zshrc
        ```


- Android
  - [Android Studio 2023.1 (Hedgehog)+](https://developer.android.com/studio/install)
  - [Flutter plugin for IntelliJ](https://plugins.jetbrains.com/plugin/9212-flutter)

- iOS
  - [Xcode 15+](https://developer.apple.com/xcode/)
    - Install [Xcode 15+](https://developer.apple.com/xcode/)
    - Configure Xcode
      - To configure the command-line tools to use the installed version of Xcode, run the following commands.
        - ```
           sudo sh -c 'xcode-select -s /Applications/Xcode.app/Contents/Developer && xcodebuild -runFirstLaunch'
          ```
      - Sign the Xcode license agreement.
        -  ```sudo xcodebuild -license```
    - Configure your iOS simulator
      - To install the iOS Simulator, run the following command.
        - ```
           xcodebuild -downloadPlatform iOS
          ```
      - To start the Simulator, run the following command:
      ```
       open -a Simulator
      ```
  - [CocoaPods 1.13+](https://guides.cocoapods.org/using/getting-started.html#installation)
    - Install cocoapods following [the CocoaPods install guide](https://guides.cocoapods.org/using/getting-started.html#installation).
      - ```
        sudo gem install cocoapods
        ```
    - Copy the following line and paste it at the end of your ~/.zshrc file.
      - ```
        export PATH=$HOME/.gem/bin:$PATH
        source ~/.zshrc
        ```

- Check your development setup
  - ```
     flutter doctor

    ```
## Running this project locally

- Start Backend
  - ```
    cd backend
    ./mvnw spring-boot:run
    ```
  - A REST back-end should running at localhost at http://localhost:9966/petclinic.
    Get your server address and update petclinic.yaml to your base application address and user credentials.
- Open 

## Resources to get started with this first Flutter project:
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

## Credits
- [spring-petclinic-rest](https://github.com/spring-petclinic/spring-petclinic-rest)
- [flutter-petclinic](https://github.com/lepidopterists/flutter-petclinic)