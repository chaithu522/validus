import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:validus/constants/constants.dart';

class EditProfileController extends GetxController
{
  var tc = TextEditingController().obs;
  var box = GetStorage();
  var type = ''.obs;
  var name = ''.obs;
  var email = ''.obs;
  var address = ''.obs;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();



  void updateTF()
  {
    if(type.value == Constants.email)
    {

      tc.value = TextEditingController(text:box.read(Constants.email) ?? '');
    }
    else if (type.value == Constants.name)
    {
      tc.value = TextEditingController(text:box.read(Constants.name) ?? '');
    }
    else if(type.value == Constants.address)
    {
      tc.value = TextEditingController(text:box.read(Constants.address) ?? '');
    }
    else
    {
      tc.value = TextEditingController(text:'');
    }


    update();
  }

  void getName() async
  {
    name.value = box.read(Constants.name) ?? '';

    update();
  }

  void getEmail() async
  {
    email.value =  box.read(Constants.email) ?? '';

    update();
  }

  void getAddress() async
  {
    address.value = box.read(Constants.address) ?? '';
    update();
  }

  void profileValidation()
  {
    if (formKey.currentState!.validate())
    {
      if(type.value == Constants.email)
        {
          updateEmail();
        }
      else if (type.value == Constants.address)
        {
          updateAddress();
        }
      else if(type.value == Constants.name)
        {
          updateName();
        }
      else
        {

        }

    }
    else
    {

      //false

    }


  }

  void updateType(String type)
  {
    this.type.value = type;

    updateTF();
  }


  //updateEmail

  void updateEmail()
  {

    box.write(Constants.email,tc.value.text);

    getEmail();

    Get.back();

  }

  //updateName

  void updateName()
  {

    box.write(Constants.name,tc.value.text);

    getName();
    Get.back();
  }
  //updateAddress

  void updateAddress()
  {

    box.write(Constants.address,tc.value.text);

    getAddress();

    Get.back();

  }

  @override
  void onInit() {


    getEmail();
    getName();
    getAddress();

    // TODO: implement onInit
    super.onInit();
  }

}