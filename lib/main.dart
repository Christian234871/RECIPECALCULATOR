import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';
void main() {
  runApp(const RECIPESAPP());
}

class RECIPESAPP extends StatelessWidget {
  const RECIPESAPP({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      //2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //3
      body: SafeArea(

        child: ListView.builder(

//5
    itemCount:Recipe.samples.length,
// 6
itemBuilder: (BuildContext context, int index) {
// 7

 // TODO: Add GestureDetector
return GestureDetector(
//8 
onTap: () {
//9
Navigator.push(
  context,
MaterialPageRoute ( 
  builder: (context) {
// 10
// TODO: Replace return with return RecipeDetail()
return RecipeDetail (recipe: Recipe.samples [index]);
  },
),
);
},
 child: buildRecipeCard (Recipe.samples [index]),
 );
}

  
      ), // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }
}



Widget buildRecipeCard (Recipe recipe) {
   return Card(
elevation: 2.0,
shape: RoundedRectangleBorder( 
  borderRadius: BorderRadius.circular(10.0)),
child: Padding (
padding: const EdgeInsets.all(16.0), 
child: Column(
  children: <Widget>[
 Image(image: AssetImage(recipe.imageUrl)),
 const SizedBox( 
  height: 14.0, 
 ),
 Text(
recipe.label,
style: const TextStyle( 
  fontSize: 20.0,
 fontWeight: FontWeight.w700, 
 fontFamily: 'Palatino', 
 ),
 )



],
),
)
);
}
