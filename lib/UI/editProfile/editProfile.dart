
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:validus/colorHelper/colorHelperClass.dart';
import 'package:get/get.dart';
import 'package:validus/fontsHelper/fontHelper.dart';
import '../../constants/constants.dart';
import '../../formValidator/formValidator.dart';
import 'editProfileController.dart';


class EditProfile extends StatefulWidget
{

 final String type;

  const EditProfile({Key? key,required this.type}) : super(key: key);

  @override
  EditProfileState createState() => EditProfileState();
}

class EditProfileState extends State<EditProfile>
{

  final EditProfileController editProfileController = Get.put(EditProfileController());




  @override
  Widget build(BuildContext context)
  {
    return SafeArea(left:true,child:Form(key:editProfileController.formKey,child:
    Container(padding:const EdgeInsets.only(top:64),color:ColorHelperClass.tabBGColor,child:
    Stack(children:[
      Column(children:[
      Row(children:[
        InkWell(onTap:(){

          Get.back();
        },child:Image.asset(ImagePathConstants.close,color:Colors.white)),
        Expanded(child:Center(child:Text(Constants.edit + ' ' + widget.type,style:TextStyle(fontSize:18,fontWeight:FontWeight.normal,color:ColorHelperClass.titleColor,fontFamily:FontManager.airbnbCerealBook))))
      ]),
      Padding(
        padding: const EdgeInsets.only(left:24,right:24,top:24),
        child:Text("We'll send you an " + widget.type + " to confirm you new  " + widget.type ,style:TextStyle(fontSize:16,fontWeight:FontWeight.normal,color:ColorHelperClass.titleColor,fontFamily:FontManager.airbnbCerealLight)),
      ),
      const SizedBox(height:24),
      Padding(
        padding: const EdgeInsets.only(left:24,right:24),
        child: Obx((){
          return  TextFormField(
            style: const TextStyle(color: Colors.white),
            keyboardType:widget.type == Constants.email ? TextInputType.emailAddress:widget.type == Constants.name ? TextInputType.name:widget.type == Constants.address ? TextInputType.text:TextInputType.text,
            validator:widget.type == Constants.email ? FormValidator.validateEmail:widget.type == Constants.name ? FormValidator.validateName:widget.type == Constants.address ? FormValidator.validateAddress:FormValidator.validateAddress,
            controller:editProfileController.tc.value,
            decoration:  InputDecoration(
              contentPadding:const EdgeInsets.only(top:8,left:8,right:8),
              filled:true,
              fillColor:ColorHelperClass.tfBG,
              labelStyle:TextStyle(color:Colors.white,fontFamily:FontManager.airbnbCerealLight,fontSize:18),
              hintStyle:TextStyle(color:Colors.white,fontFamily:FontManager.airbnbCerealLight,fontSize:14) ,
              hintText: widget.type,
              focusColor:ColorHelperClass.titleColor,

              labelText: widget.type,
            ),
          );
        })
      )
    ]),
      Positioned(child: Align(
    alignment: Alignment.bottomCenter,
    child: Column(
      mainAxisAlignment:MainAxisAlignment.end,
      children: [
        InkWell(onTap:(){
          editProfileController.profileValidation();
        },child:Container(child: Center(child:Text(Constants.save,style:TextStyle(color:ColorHelperClass.tabBGColor,fontFamily:FontManager.airbnbCerealMedium,fontWeight:FontWeight.normal,fontSize:20))),width:Get.width - 24,height:44,color:ColorHelperClass.buttonBGColor)),
        const SizedBox(height:16)
      ],
    ))),
    ])
    )));
  }
}
