import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../frequent_used_widget/moving_background.dart';
import 'common_widget/information_area.dart';

class MacOsInstallation extends StatefulWidget {
  const MacOsInstallation({super.key});

  @override
  State<MacOsInstallation> createState() => _MacOsInstallationState();
}

class _MacOsInstallationState extends State<MacOsInstallation> {
  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        appBar: AppBar(
          title: FittedBox(
            fit: BoxFit.contain,
            child: const Text('MacOs Flutter',style:  TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w800,
              color: Colors.white,
            )).animate()
                .scale(duration: 400.ms, curve: Curves.decelerate),
          ),
          backgroundColor: HexColor('#011f4b').withOpacity(0),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _subHeading(
                    topPadding: 20,
                    bottomPadding: 20,
                    SubHeading: "MacOs Flutter Install"
                ),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _subHeading({
    required double topPadding,
    required double bottomPadding,
    required String SubHeading
  }){
    return Column(
      children: [
        SizedBox(height: topPadding,),
        InformationBox().SubHeading(
            topPadding: 20,
            bottomPadding: 20,
            SubHeading: SubHeading
        ),

        InformationBox().youtube(link: 'https://www.youtube.com/watch?v=f09c-nw15K8').animate()
            .scale(duration: 400.ms, curve: Curves.decelerate)
            .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),

        InformationBox().CardText(
            stepNum: '1',
            Content:
            "Check System Requirements.\n\n"
            "Make sure your macOS system meets the following requirements:- \n"
              "\n\n1) Operating System: macOS (64-bit)"
              "\n\n2) Disk Space: At least 3.5 GB."
              "\n\n3) Tools: Git, IDE (Xcode includes git)"
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '2',
            Command: 'git clone https://github.com/flutter/flutter.git',
            Content:
            "Download Flutter SDK\n\n"
              "\n1) Open Terminal"
              "\n\n2) Create a new folder in your home directory (for example, \"tools\")."
              "\n\n3) Clone Flutter from the GitHub repository by executing the following command:",
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '3',
            Command: 'export PATH="\$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"',
            Content:
            "Update Path Variable and Download Dart SDK\n"
              "\n1) Identify your terminal (Zsh or Bash)."
              "\n\n2) Create or edit the respective startup file (.zshrc for Zsh, .bashrc for Bash) in your home directory."
              "\n\n3) Add the following line to the file, replacing [PATH_TO_FLUTTER_GIT_DIRECTORY] with the path to the bin folder in the Flutter directory:",
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '4',
            Command: 'vim .zshrc   # For Zsh terminal, use .bashrc for Bash',
            Content:
            "Verify Path Variable\n"
              "\n1) Open Terminal and run this command."
              "\n\n2) You should see the set path"
              "\n\n3) Press Esc key, then type :wq and press Enter to save and exit.",
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '5',
            Command: 'flutter doctor',
            Content:
            "Run Flutter Doctor\n"
              "\n1) Open Terminal."
              "\n\n2) Run Command"
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '6',
            Command: 'sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer\n\n'
            'sudo xcodebuild -runFirstLaunch',
            Content:
            "Install Xcode\n\n"
            "Install Xcode from the App Store if not already installed "
            "run the following commands in Terminal:"
        ),
        InformationBox().CardText(
            stepNum: '7',
            Content: 'Install Android SDK\n\n'
            '1) Download Android Studio DMG file from the official website.\n\n'
            '2) Launch the DMG file, then copy Android Studio to the Applications folder.\n\n'
            '3) Open Android Studio and install the Flutter plugin.\n\n'
            '4) Restart your system.'
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '8',
            Command: 'flutter doctor --android-licenses',
            Content:
            "Accept Android Licenses\n\n"
                "1) Open Terminal.\n\n"
                "2) Run this Command."
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '9',
            Command: 'flutter channel master  # For macOS desktop app development\n\n'
            'flutter config --enable-macos-desktop',
            Content:
            "Set Up Flutter Channels\n\n"
                "1) Open Terminal.\n\n"
                "2) Run this Command."
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '10',
            Command: 'flutter create hello_world',
            Content:
            "Create Your First Flutter Project\n\n"
                "1) Open Terminal.\n\n"
                "2) Navigate to the desired folder.\n\n"
                "3) Run this Command."
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '11',
            Command: 'cd hello_world',
            Content:
            "Navigate into the project folder:"
        ),
        InformationBox().CardTextWithCommand(
            stepNum: '12',
            Command: 'flutter run',
            Content:
            "Run the project:"
        ),

      ],
    );
  }
}
