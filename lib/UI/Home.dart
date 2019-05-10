import 'package:flutter_web/material.dart';
import 'package:flutter_web_example/UI/QuotesPage.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  var Pname  = ["Vincent van Gogh","Pablo Picasso ","Henri Matisse"  ] ;
  var Pimage  = ["https://www.vincentvangogh.org/images/self-portrait.jpg","https://images.gr-assets.com/authors/1198536109p8/3253.jpg","https://images.gr-assets.com/authors/1217442204p8/118314.jpg"  ] ;

  void initState() {
     super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes" , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),

      body:new GridView.builder(
        itemCount: Pname.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
           return CardT( Pname[index] , Pimage[index]);
        }
      )
    );
  }

  Widget CardT (String title , String image){
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child:  Card(
        elevation: 3,
        color: Colors.white,
        margin: EdgeInsets.only(right: 10, left: 10 ,top: 10 , bottom: 10),
        child: Container(
          height: 100,
          width: 100,
          child: Stack(
          children: <Widget>[
              Center(
              child: Image.network(
                image ,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
              ),
            ), 
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black.withOpacity(0.5),
               ),
         
            Center(
              child: Text( title , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white , fontSize: 20), textAlign: TextAlign.center,),
            ) , 
          
          ],
        ) , 
        ) 
    ),
        onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuotesPage(name:title)),
                );
        },
    );
   
  }
}