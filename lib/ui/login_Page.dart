import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:page1/ui/main_page.dart';
import 'package:string_validator/string_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Logger logger = Logger();

  GlobalKey<FormState> formkey = GlobalKey();
  saveForm() {
    bool vali =
        formkey.currentState.validate(); //بتفعلي كل الفورم الي من نوع فاليديتور
    if (vali) {
      formkey.currentState.save();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return MainPage();
      }));
    } else {
      return;
    }
  }

  String password;

  String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Container(
          child: Form(
            key: formkey, //بصل لأي معلومة للفورم من خلال فورم كي
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Image.asset('assest/image/Component 7 – 1.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 48,
                    child: TextFormField(
                      // onChanged: (value){
                      //  logger.d(message)
                      // },
                      validator: (value) {
                        //بدو يفحص قيمة الخطأ
                        if (value == null || value == '') {
                          return 'الحقل فارغ';
                        } else if (!isEmail(value)) {
                          return 'البريد غير صحيح';
                        }
                      },
                      onSaved: (newValue) {
                        this.email = newValue;
                      },
                      decoration: InputDecoration(
                          labelText: 'البريد الألكتروني أو الهاتف',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 48,
                    child: TextFormField(
                      // onChanged: (value){
                      //  logger.d(message)
                      // },
                      validator: (value) {
                        //بدو يفحص قيمة الخطأ
                        if (value == null || value == '') {
                          return 'الحقل فارغ';
                        } else if (value.length < 6) {
                          return 'يجب أن تحتوي كلمة الحروف على 6 أحرف فأكثر';
                        }
                      },
                      onSaved: (newValue) {
                        this.password = newValue;
                      },
                      decoration: InputDecoration(
                          labelText: 'كلمة المرور',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RaisedButton(
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('تسجيل الدخول'),
                          onPressed: () {
                            saveForm();
                          }),
                      RaisedButton(
                          color: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text('انشاء حساب '),
                          onPressed: () {
                            saveForm();
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:page1/backend/server.dart';

// import 'custamtext.dart';

// class LoginPage extends StatelessWidget {
//   String email;
//   String password;
//   saveEmail(String value) {
//     this.email = value;
//   }

//   savepassword(String value) {
//     this.password = value;
//   }

//   nullValidator(String value) {
//     if (value == '' || value == null) {
//       return 'required field';
//     }
//   }

//   GlobalKey<FormState> loginKey = GlobalKey();
//   saveForm() {
//     if (loginKey.currentState.validate()) {
//       loginKey.currentState.save();

//       signInUsingEmailAndPassword(this.email, this.password);
//     } else {
//       return;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Form(
//             key: loginKey,
//             child: Expanded(
//               child: ListView(
//                 children: [
//                   CustomTextField(
//                     labelName: 'Email',
//                     saveFun: saveEmail,
//                     validateFun: nullValidator,
//                   ),
//                   CustomTextField(
//                     labelName: 'Password',
//                     saveFun: savepassword,
//                     validateFun: nullValidator,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//               width: double.infinity,
//               child: RaisedButton(
//                   color: Colors.blueAccent,
//                   child: Text('Register'),
//                   onPressed: () {
//                     saveForm();
//                   }))
//         ],
//       ),
//     );
//   }
// }
