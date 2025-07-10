import 'package:flutter/material.dart';
class MealItem extends StatelessWidget {
 final String name ;
 final String image ;
 final String id ;

  const MealItem({super.key, required this.name, required this.image, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(15) ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
        ),
        color: Colors.teal,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image))
            ),
          ),
          Text(name,style:TextStyle(fontSize: 15)  ,),
         IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
        ],
      ),
    );
  }
}
