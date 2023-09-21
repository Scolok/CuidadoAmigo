import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          SingleChildScrollView(
            child: Padding(
            padding: new EdgeInsets.only(top:150.0),
            child: Column(
              children:[
                Row(children: [IconButton(onPressed: (){Navigator.of(context).pushReplacementNamed('/login');}, icon: Icon(Icons.arrow_back)),],),
                Column(
                
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  
                  SizedBox(
                    height: 200,
                    width:400 ,
                    child: Image.asset('Assets/imagens/LOGO.png',fit:BoxFit.cover,)),
                  TextFormField( 
                     
                    keyboardType: TextInputType.emailAddress,
                    decoration:InputDecoration(
                      labelText:  'Email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                   )),
                   ElevatedButton(onPressed:(){}, child: Text('Enviar Email',style: TextStyle(color: Colors.white,)),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(92, 198, 186, 100),
                      shape:  StadiumBorder()
                    ),
                    ),
              
               ],
              ),
            ]),
                  ),
          ),
    );
  }
}