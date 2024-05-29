import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../frequent_used_widget/moving_background.dart';
import 'common_widget/information_area.dart';

class WindowsInstallation extends StatefulWidget {
  const WindowsInstallation({super.key});

  @override
  State<WindowsInstallation> createState() => _WindowsInstallationState();
}

class _WindowsInstallationState extends State<WindowsInstallation> {
  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        appBar: AppBar(
          title: FittedBox(
            fit: BoxFit.contain,
            child: const Text('Windows Flutter',style:  TextStyle(
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InformationBox().SubHeading(
                    topPadding: 20,
                    bottomPadding: 20,
                    SubHeading: "Flutter Sdk Install"),

                InformationBox().youtube(link: 'https://www.youtube.com/watch?v=9WT9s7jkGEQ').animate()
                    .scale(duration: 400.ms, curve: Curves.decelerate)
                    .shake(duration: 600.ms, delay: 400.ms, hz: 2, rotation: 0.06),

                InformationBox().CardTextAndImage(
                    stepNum: '1',
                    Content: 'Download the Flutter SDK for Windows directly from the official website. Click "Get started" and choose "Windows" on the following screen to begin the installation process, then click on download *.zip',
                    PathOfImage: 'assets/images/flutter_windows_install_1.png'
                ),
                InformationBox().CardText(
                    stepNum: '2',
                    Content: "Once the Flutter download finishes, extract the contents of the zip file. You can choose where to store the extracted files, like the suggested location \"D:\Flutter\", by selecting that folder during the extraction process."
                ),
                InformationBox().CardTextAndImage(
                    stepNum: '3',
                    Content: 'To run Flutter commands directly from your Windows terminal, you\'ll need to modify your system path to include the Flutter bin directory. This allows you to execute commands like "flutter doctor" without specifying the full path.\n\nNavigate to My Computer Properties > Advanced Tab > Environment Variables. The following screen will appear',
                    PathOfImage: 'assets/images/flutter_windows_install_2.png'
                ),
                InformationBox().CardTextAndImage(
                    stepNum: '4',
                    Content: 'Now, select path -> click on edit. is displayed on the following screen, now Paste the complete path to the flutter\bin directory into the system path environment variable. Click "OK" twice to finalize the setup and enable running Flutter commands directly from your terminal',
                    PathOfImage: 'assets/images/flutter_windows_install_3.png'
                ),
                InformationBox().CardTextAndImageDis(
                    stepNum: '5',
                    Content: 'After setting up the environment path, open your command prompt and run "flutter doctor" to check if any additional tools or dependencies need to be installed for Flutter to function properly.',
                    PathOfImage: 'assets/images/flutter_windows_install_4.png',
                    dis: 'The "flutter doctor" check might reveal a successful Flutter installation, but missing Android tools, Android Studio, and connected devices. This indicates the need to set up the Android environment for running your Flutter apps'
                ),
                InformationBox().SubHeading(
                    topPadding: 20,
                    bottomPadding: 20,
                    SubHeading: "Install Android Studio"
                ),
                InformationBox().CardTextAndImage(
                    stepNum: '6',
                    Content: 'Get started developing Android apps alongside Flutter by downloading and installing Android Studio from the official website [Search android studio download].',
                    PathOfImage: 'assets/images/flutter_windows_install_5.png'
                ),
                InformationBox().CardTextAndImage(
                    stepNum: '7',
                    Content: 'Go to Tools > AVD Manager, then click on Create Virtual Device.',
                    PathOfImage: 'assets/images/flutter_windows_install_6.png'
                ),
                InformationBox().CardTextAndImageDis(
                    stepNum: '8',
                    Content: "Do flowing tast:-\n"
                        "\n\n1) Choose your desired device (phone or tablet) and click \"Next\"."
                        "\n\n2) Select the system image for the latest Android version and click \"Next\" again."
                        "\n\n3) Review your AVD configuration. If everything looks good, click \"Finish\" to create the virtual device.",
                    PathOfImage: 'assets/images/flutter_windows_install_7.png',
                    dis: 'Restart Android Studio,'
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
