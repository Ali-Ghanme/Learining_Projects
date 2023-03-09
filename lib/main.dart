import 'package:flutter/material.dart';
import 'package:learning_app/Project_ListView_PassData/Home3.dart';
import ' Build a form with validation/Screen/Home.dart';
import ' Temperature Conversion App/Temperature_Conversion_Screen.dart';
import ' Temperature Conversion App/VersionTow_Screen.dart';
import 'All_Push_Methods/Screen/Home4.dart';
import 'All_Push_Methods/Screen/ScreenOne.dart';
import 'All_Push_Methods/Screen/ScreenTow.dart';
import 'Coustom_Tab_bar/Tab_bar.dart';
import 'Reurn_Data_From_Screen_Project/Home2.dart';
import 'Reurn_Data_From_Screen_Project/Second_Screen.dart';
import 'Send_Data/Pages/Home.dart';
import 'Send_Data/Pages/PageTow.dart';
import 'Send_Data/Pages/Page_One.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: TabScreen.rout,
      routes: {
        // Project One
        Home.rout: (context) => const Home(),
        PageOne.rout: (context) => const PageOne(),
        'PageTow': (context) => const PageTow(),
        // Project Tow
        Home2.rout: (context) => const Home2(),
        SecondScreen.rout: (context) => const SecondScreen(),
        // Project Three
        Home3.rout: (context) => const Home3(),
        // Project Four
        Home4.rout: (context) => const Home4(),
        ScreenOne.rout: (context) => const ScreenOne(),
        ScreenTow.rout: (context) => const ScreenTow(),
        // Project Five
        Home5.rout: (context) => const Home5(),
        // TemperatureConversion Project
        TemperatureConversion.rout: (context) => TemperatureConversion(),
        // Tab Project
        TabScreen.rout: (context) => const TabScreen(),
        // Temperature Conversion V2 Project
        TempV2.rout: (context) => const TempV2(),
      },
    );
  }
}
