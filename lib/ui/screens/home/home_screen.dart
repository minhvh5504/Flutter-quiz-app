import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
          child: Image.asset("assets/images/background.png",fit: BoxFit.cover),
          ),
          Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Let's Play QuizGame",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: size.height *0.03,),
                    const Text('Bộ câu hỏi hỏi trách nghiệm lập trình'),
                    SizedBox(height: size.height *0.1,),
                    DropdownButton<String>(
                      hint: const Text('Chọn ngôn ngữ của bạn',
                      style: TextStyle(
                        color: Colors.white70,
                      )),
                      isExpanded: true,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      items: <String>['Dart','Java','C++','C#'].map((String value) {
                          return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                          );
                        }).toList(),
                      onChanged: (_) {},
                    ),
                    SizedBox(height: size.height *0.06),
                    Material(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      child: InkWell(
                        splashColor: Colors.yellow,
                        onTap: (){
                          print('button');
                        },
                        child: Ink(
                            padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xff44A3AE),
                                    Color(0xff33FBC9),
                                ],
                              ),
                            ),
                            width: size.width,
                            child: const Align(
                              child:  Text("Bắt đầu thực hành ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                        ),
                      ),
                    ),
                ],
              ),
           ),
          ),
        ],
      ),
    );
  }
}
