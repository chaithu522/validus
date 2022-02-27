

class FormValidator {

  static String? validateEmail(String? email) {
    if (email?.isEmpty == true) return "Please Enter Email";
    String pattern =
        r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
    RegExp regExp = RegExp(pattern);
    // RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email ?? '')) {
      return "Please Enter A Valid Email";
    }
    return null;
  }


 static  String? validateName(String? value)
 {
   if (value == null || value.isEmpty)
   {
     return 'Please Enter Name';
   } else {
     return null;
   }
 }




 static  String? validateAddress(String? value)
 {
   if (value == null || value.isEmpty)
   {
     return 'Please Enter Address';
   } else {
     return null;
   }
 }



}
