import 'package:flutter/material.dart';
import 'package:whatsappclone/model/custom_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:whatsappclone/screens/home_screen.dart'; // add dependency in pubspec first

class VerificationScreen extends StatelessWidget {
  static const routeName = 'verificationScreen'; // route name

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

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
                  'Verification',
                  style: TextStyle(
                      color: CustomColors().darkBlack,
                      fontSize: 28,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'We have sent you an SMS with a code to the number that you provided.',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: PinCodeTextField(
                      length: 4,
                      animationType: AnimationType.fade,
                      animationDuration: Duration(milliseconds: 300),
                      autoDismissKeyboard: true,
                      textInputType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        activeColor: CustomColors().darkGreen,
                        inactiveColor: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                      ),
                      onChanged: (value) {
                        print('changed');
                      }),
                ),
                SizedBox(height: 20),
                Text(
                  'Resend code in  0:25',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 90),
                Center(
                  child: Material(
                    color: CustomColors().darkGreen,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 5,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => HomePage(),
                            ));
                      },
                      minWidth: screenWidth * 0.8,
                      height: screenHeight * 0.085,
                      child: Text(
                        'FINISH',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
