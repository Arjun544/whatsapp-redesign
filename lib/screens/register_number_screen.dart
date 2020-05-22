import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';

class RegisterNumberScreen extends StatefulWidget {
  static const routeName = 'registerNumberScreen';
  @override
  _RegisterNumberScreenState createState() => _RegisterNumberScreenState();
}

class _RegisterNumberScreenState extends State<RegisterNumberScreen> {
  TextEditingController numberTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double textSize = MediaQuery.of(context).textScaleFactor;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: CustomColors().darkBlack,
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: screenHeight * 0.27,
                  width: screenWidth * 0.22,
                  child: Image.asset(
                    'assets/logo.png',
                    color: CustomColors().darkGreen,
                  ),
                ),
                Text(
                  'Welcome to whatsapp',
                  style: TextStyle(
                      color: CustomColors().darkBlack,
                      fontSize: 28,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'Provide your phone number, so we can be able to send you confirmation code.',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.1,
                      width: screenWidth * 0.1,
                      child: TextField(
                        cursorColor: CustomColors().darkGreen,
                        style: TextStyle(color: CustomColors().darkBlack),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '+92',
                          hintStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        height: screenHeight * 0.1,
                        child: TextField(
                          controller: numberTextEditingController,
                          cursorColor: CustomColors().darkGreen,
                          style: TextStyle(color: CustomColors().darkBlack),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Phone number',
                            hintStyle: TextStyle(
                                color: Colors.black26,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black45),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black45),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'By continuing, you are indicating that you\nagree to the ',
                            style: TextStyle(
                              color: CustomColors().darkBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: textSize * 15 ,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy & Terms. ',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: textSize * 15 ,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Center(
                  child: Material(
                    animationDuration: Duration(milliseconds: 5),
                    color: CustomColors().darkGreen,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 5,
                    child: MaterialButton(
                      onPressed: () {
                        numberTextEditingController.text.isEmpty
                            ? _showMyDialogue()
                            : Navigator.pushNamed(
                                context, 'verificationScreen');
                      },
                      minWidth: screenWidth * 0.8,
                      height: screenHeight * 0.085,
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 22,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // alert box when phone number is empty
  void _showMyDialogue() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(
              'Please enter your phone number.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'OK',
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColors().darkGreen,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
