import 'package:flutter/material.dart';
import 'package:taku/feature_box.dart';
import 'package:taku/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Taku'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            // VIRUTAL ASSISTANT CIRCLE STACK
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle
                    ),
                  
                  ),
                ),
                Container(
                  height: 123,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image:AssetImage('assets/images/virtualAssistant.png'))
                  ),
      
                )
              ]
            ),
            // CHAT BUBBLE
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
                top: 30
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Pallete.borderColor),
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: const Radius.circular(0),
                )
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Hi, I\'m Taku. How can I help you?',
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.mainFontColor,
                    fontSize: 18
                  ),
                ),
              ),
              ),
             // COMMANDS TEXT
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 10, left: 22),
                alignment: Alignment.centerLeft,
                child: const Text(
                    'Here are a few features offered',
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      color: Pallete.mainFontColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              ),
            // FEATURES LIST
            Column(
                children: const [
                  FeatureBox(
                    color:Pallete.firstSuggestionBoxColor,
                    headerText: 'ChatGPT',
                    subText: 'Chat with ChatGPT about anything and everything, its smart enough to understand your context and reply accordingly',
                    ),
                    FeatureBox(
                      color: Pallete.secondSuggestionBoxColor,
                      headerText: 'Dall E',
                      subText:
                          'Get inspired by Dall E, a neural network that generates images from text',
                    ),
                    FeatureBox(
                      color: Pallete.thirdSuggestionBoxColor,
                      headerText: 'Smart Voice Assistant',
                      subText:
                          'Get your work done with the help of a smart voice assistant',
                    ),
                ],
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Pallete.firstSuggestionBoxColor,
        child: const Icon(Icons.mic),
      )
    );
  }
}
