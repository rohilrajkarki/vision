import 'package:flutter/material.dart';
import 'package:ying_yang/helpers/utils.dart';
import 'package:ying_yang/models/Onboarding_content.dart';
import 'package:ying_yang/pages/categorylistpage.dart';
import 'package:ying_yang/widgets/botton.dart';
import 'package:ying_yang/widgets/main_AppBar.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnboardingContent> _content = Utils.getOnboarding();
  int pageIndex = 0;

  PageController? _controller;
  //proper way to initilize a controller is to use init state method
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  //init laii dispose garna jaruri xa to free up resources
  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                //current page ko index nikalna laii onPageChanged
                onPageChanged: (int page) {
                  setState(() {
                    {
                      pageIndex = page;
                    }
                  });
                },
                children: List.generate(
                  _content.length,
                  (index) => Container(
                    padding: EdgeInsets.all(40),
                    margin: EdgeInsets.only(
                        left: 40, right: 40, top: 40, bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset.zero,
                          )
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.donut_small_sharp,
                                    color: Colors.green,
                                  )),
                              Image.asset(
                                'assets/images/${_content[index].img}.png',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                _content[index].message!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: index == _content.length - 1,
                          child: ThemeButton(
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryListPage()));
                            },
                            label: 'Enter here dudes!',
                            whatcolor: Colors.lightGreen,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  _content.length,
                  (index) => GestureDetector(
                        onTap: () {
                          _controller!.animateTo(
                            MediaQuery.of(context).size.width * index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                width: 6,
                                color: pageIndex == index
                                    ? Colors.lightGreen.withOpacity(1)
                                    : Colors.white,
                              )),
                        ),
                      )),
            ),
            ThemeButton(
              label: 'Enter Now',
              onClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryListPage()));
              },
              whatcolor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
