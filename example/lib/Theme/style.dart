import 'package:flutter/material.dart';


double borderRadius=8;
Color iconsColor= const   Color.fromRGBO(121, 121, 121, 1);// Color.fromRGBO(154, 154, 161, 1);


TextStyle cairoSemiBoldStyle (double size,var color){
  return TextStyle(
    fontSize: size,
    fontFamily: "SemiBold",
    fontWeight: FontWeight.bold,
    color: color,
  );
}

InputDecoration searchDecoration(context,size,hint){
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    prefixIcon:const Icon(
      Icons.search,
      color:Colors.grey,
    ),
    // contentPadding: EdgeInsets.all(
    //     size.width *
    //         0.016944444444444444),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.5),
      ),
      borderRadius:
      BorderRadius.circular(
         6
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color:  Colors.grey.withOpacity(0.5),
      ),
      borderRadius:
      BorderRadius.circular(6),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color:  Theme.of(context).primaryColor,
      ),
      borderRadius:
      BorderRadius.circular(6),
    ),
    hintText: hint,
    hintStyle: const TextStyle(
        color: Colors.grey,
        fontFamily: "Regular",
        fontSize: 13),

    // fillColor: Colors.red,
  );
}

InputDecoration textFieldDecoration(context,size,hint){
  return InputDecoration(
    contentPadding: EdgeInsets.all(
        size.width * 0.016944444444444444),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.5),
      ),
      borderRadius:
      BorderRadius.circular(
          6
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color:  Colors.grey.withOpacity(0.5),
      ),
      borderRadius:
      BorderRadius.circular(6),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color:  Theme.of(context).primaryColor,
      ),
      borderRadius:
      BorderRadius.circular(6),
    ),
    hintText: hint,
    hintStyle: const TextStyle(
        color: Colors.grey,
        fontFamily: "Regular",
        fontSize: 13),

    // fillColor: Colors.red,
  );
}





