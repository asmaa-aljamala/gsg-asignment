import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:page1/ui/login_Page.dart';
import 'package:string_validator/string_validator.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Logger logger = Logger();

  GlobalKey<FormState> formkey = GlobalKey();
  saveForm() {
    if (isAspted) {
      bool validateResult = formkey.currentState.validate();
      if (validateResult) {
        formkey.currentState.save();
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
      } else {
        return;
      }
    }

    bool vali =
        formkey.currentState.validate(); //بتفعلي كل الفورم الي من نوع فاليديتور
    if (vali) {
      formkey.currentState.save();
    } else {
      return;
    }
  }

  String password;
  bool isAspted = false;
  String userName;
  String email;
  String phone;
  String date;
  int groupvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black12,
        title: Text(('Forms')),
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
                    'إنشاء حساب جديد',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                  Image.asset('assest/image/User 01a.png'),
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
                        }
                      },
                      onSaved: (newValue) {
                        this.userName = newValue;
                      },
                      decoration: InputDecoration(
                          labelText: 'الاسم رباعي',
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
                        } else if (!isEmail(value)) {
                          return 'البريد غير صحيح';
                        }
                      },
                      onSaved: (newValue) {
                        this.email = newValue;
                      },
                      decoration: InputDecoration(
                          labelText: 'البريد الالكتروني ',
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
                        } else if (!isNumeric(value)) {
                          return 'ادخل أرقام';
                        }
                      },
                      onSaved: (newValue) {
                        this.phone = newValue;
                      },
                      decoration: InputDecoration(
                          labelText: 'رقم الجوال ',
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
                        }
                        // else if (!isDate(value)) {
                        //   return 'ادخل تاريخ الميلاد';
                        // }
                      },
                      onSaved: (newValue) {
                        this.date = newValue;
                      },
                      decoration: InputDecoration(
                          labelText: 'تاريخ الميلاد ',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'الجنس',
                          style: TextStyle(fontSize: 20),
                        ),
                        Expanded(
                          child: RadioListTile(
                              title: Text('ذكر'),
                              value: 1,
                              groupValue: groupvalue,
                              onChanged: (value) {
                                this.groupvalue = value;
                                setState(() {});
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              title: Text('انثى'),
                              value: 2,
                              groupValue: groupvalue,
                              onChanged: (value) {
                                this.groupvalue = value;
                                setState(() {});
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CheckboxListTile(
                      title: Text('قبول جميع الشروط'),
                      value: isAspted,
                      onChanged: (value) {
                        setState(() {
                          this.isAspted = value;
                        });
                      }),
                  RaisedButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text('إنشاء حساب'),
                      onPressed: () {
                        saveForm();
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
