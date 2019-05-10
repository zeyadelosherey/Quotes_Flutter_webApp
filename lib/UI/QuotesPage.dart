import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class QuotesPage extends StatefulWidget {
  final String name;
  QuotesPage({Key key, @required this.name}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _QuotesPageState();
  }
}

class _QuotesPageState extends State<QuotesPage> {
  @override
  List QuotesList = new List();
    var Quotes1  = ["It is good to love many things, for therein lies the true strength, and whosoever loves much performs much, and can accomplish much, and what is done in love is well done.",
  "I dream my painting and I paint my dream.", 
  "Be clearly aware of the stars and infinity on high. Then life seems almost enchanted after all.",
  "...and then, I have nature and art and poetry, and if that is not enough, what is enough?",
  "A great fire burns within me, but no one stops to warm themselves at it, and passers-by only see a wisp of smoke",
  "I don't know anything with certainty, but seeing the stars makes me dream.",
  "Normality is a paved road: It’s comfortable to walk,﻿ but no flowers grow on it.",
  "If you hear a voice within you say you cannot paint, then by all means paint and that voice will be silenced.",
   ] ;


     var Quotes2  = ["Everything you can imagine is real.", 
  "Every child is an artist. The problem is how to remain an artist once he grows up.",
  "Art is the lie that enables us to realize the truth.",
  "Art washes away from the soul the dust of everyday life.",
  "Others have seen what is and asked why. I have seen what could be and asked why not",
  "Ah, good taste! What a dreadful thing! Taste is the enemy of creativeness.",
  "I am always doing that which I can not do, in order that I may learn how to do it",
   ] ;



     var Quotes3  = ["There is nothing more difficult for a truly creative painter than to paint a rose, because before he can do so he has first to forget all the roses that were ever painted", 
  "Derive happiness in oneself from a good day's work, from illuminating the fog that surrounds us",
  "What I dream of is an art of balance, of purity and serenity devoid of troubling or depressing subject matter - a soothing, calming influence on the mind, rather like a good armchair which provides relaxation from physical fatigue.",
  "We ought to view ourselves with the same curiosity and openness with which we study a tree, the sky or a thought, because we too are linked to the entire universe.",
  "You study, you learn, but you guard the original naïveté. It has to be within you, as desire for drink is within the drunkard or love is within the lover.",
  "Don’t wait for inspiration. It comes while one is working.",
  "Derive happiness in oneself from a good day’s work, from illumination the fog that surround",
   ] ;

 
  void initState() {
     super.initState();
     if(widget.name == "Vincent van Gogh"){
        QuotesList.addAll(Quotes1);
     }else if(widget.name == "Henri Matisse"){
       QuotesList.addAll(Quotes3);
     }else{
       QuotesList.addAll(Quotes2);
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
                  color: Colors.black, 
        ),
        centerTitle: true,
        elevation: 1,
      ),

      body:new ListView.builder(
        itemCount: QuotesList.length,
        itemBuilder: (BuildContext context, int index) {
           return CardT( QuotesList[index]);
        }
      )
    );
  }

  Widget CardT (String title){
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child:  Card(
        elevation: 1,
        color: Colors.white,
        margin: EdgeInsets.only(right: 50, left: 50 ,top: 10 , bottom: 10),
        child: Container(
          height: 100,
          width: 100,
            child : Padding(
              padding: EdgeInsets.only(left: 10 , right: 10),
              child:Center(
                child: Text( title , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 15 ), textAlign: TextAlign.center, ),
              ) 
            ) , 
        ) 
    ),
        onTap: (){
 
        },
    );
   
  }
}