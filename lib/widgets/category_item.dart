import 'package:creativa22/model/category.dart';
import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
 final Category category ;

  const CategoryItem({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, "s2",arguments:
            {
              "id":category.id,
              "name":category.name,
            } );
          },
          splashColor: Colors.teal,
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height:200,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(

                  color: Colors.red,


                ),

                width: double.infinity,
                height: 50,
                child: Text(category.name,style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),)),
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(category.image))
            ),
          ),
        ),
      ),
    );
  }
}
