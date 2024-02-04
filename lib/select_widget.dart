import 'package:flutter/material.dart';
import 'core/util/app_constants.dart';

class SelectWidget extends StatefulWidget {
   SelectWidget({Key? key,required this.onChanged,required this.selected,required this.title,required this.firstValue,required this.secondValue}) : super(key: key);
   final String ?title;
   final String firstValue;
   final String secondValue;
   bool selected;
   final ValueChanged<bool> onChanged;

  @override
  State<SelectWidget> createState() => _SelectWidgetState();

}

class _SelectWidgetState extends State<SelectWidget> {

  void _handleTap() {
    setState(() {
      widget.selected = !widget.selected;
      widget.onChanged(widget.selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        if(widget.title!=null)
        Padding(
          padding:  EdgeInsets.only(top: size.height*0.016741071428571428),
          child: Row(
            children: [
              Text(widget.title!,style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),


        Padding(
          padding:  EdgeInsets.only(top:(widget.title!=null)?10:0),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: iconsColor,width: 1)
            ),

            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:  (){
                      _handleTap();
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      width: widget.selected ? (size.width-15)/2*0.8 : (size.width-15)/2,
                      height: widget.selected ? 100.0 : 200.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).cardColor,
                        border: !widget.selected ?Border.all(color: Theme.of(context).primaryColor,width: 2):null,
                      ),
                      child: Text(widget.firstValue,style: Theme.of(context).textTheme.titleSmall),

                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      _handleTap();
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      width: !widget.selected ? (size.width-15)/2*0.8 : (size.width-15)/2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).cardColor,
                        border: widget.selected ?Border.all(color: Theme.of(context).primaryColor,width: 2):null,
                      ),
                      child: Text(widget.secondValue,style: Theme.of(context).textTheme.titleSmall,),//non-Iraqi
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}
