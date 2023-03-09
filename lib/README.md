In this lecture I'll talk about all type of push methods
1- push  ✅
2- pushName ✅
3- pushReplacement ✅
4- pushReplacementNamed ✅
5- pushAndRemoveUntil
6- pushNamedAndRemoveUntil

In This project we will take about Stack DataStructure on Navigate 
between Screen and how they store on stack and what is the best way to 
store it 

// Code
// Navigate by pushReplacement
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ScreenOne()))

// Navigate by pushReplacementNamed
Navigator.of(context).pushReplacementNamed(ScreenOne.rout)

// Navigate by MaterialPageRoute Not by named Rout
Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenOne()))

// Navigate by named Rout  Not by  MaterialPageRoute
Navigator.of(context).pushNamed(ScreenTow.rout),

// pushAndRemoveUntil
Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false)


// Pop Method
pop, 
maybePop,
canPop,
popAndPushNamed 
popUntil

// Form And Validation
// Force on Text Filed
// Flutter Handle changes to a text field by tow way:
- onChange() method
- TextEditingController : Steps:
- Create a TextEditingController
- Connect the TextEditingController to a Text field
- crete a function to print the latest value
- Listen to the controller for changes
- 
// Switch Widget
// Radio & RadioListTile

//  Temperature Conversion App

// How to create Tab Bar
- create a TabController
- create Tabs
- create counter for each tab