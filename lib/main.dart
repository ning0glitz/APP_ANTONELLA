import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Antonella',
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/informacion': (context) => Informacion(),
        '/galeria': (context) => Galeria(),
        '/artistas': (context) => Artistas(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://marketplace.canva.com/EAE3m9b8mvk/1/0/900w/canva-fondo-de-pantalla-para-m%C3%B3vil-ZKTpcjIUrhA.jpg' //FONDO DE PANTALLA DE LA VISTA PRINCIPAL
                ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor:
            Colors.transparent, //COLOR DE FONDO DE LA VISTA INICIAL
        appBar: AppBar(
          title: Text(" Antonella Oyola APP"),
          backgroundColor: Colors.tealAccent[700],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TITULO
              Text(
                "Bienvenidos a mi APP",
                textAlign: TextAlign.center,
                style: GoogleFonts.concertOne(
                    fontSize: 75,
                    color: Colors.redAccent[900],
                    fontWeight: FontWeight.bold),
              ),

              //BOTON DE DETALLES
              SizedBox(height: 30),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () => Navigator.pushNamed(context, '/informacion'),
                color: Colors.indigoAccent,
                child: Text(
                  'INFORMACIÓN',
                  style: GoogleFonts.concertOne(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),

              //BOTON DE CONFIGURACION
              SizedBox(height: 20),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () => Navigator.pushNamed(context, '/galeria'),
                color: Colors.pinkAccent,
                child: Text(
                  'GALERÍA',
                  style: GoogleFonts.concertOne(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),

              //BOTON DE ARTISTAS
              SizedBox(height: 20),
              MaterialButton(
                minWidth: 200.0,
                height: 40.0,
                onPressed: () => Navigator.pushNamed(context, '/artistas'),
                color: Colors.amber,
                child: Text(
                  'ARTISTAS',
                  style: GoogleFonts.concertOne(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// VISTA DE INFORMACION
class Informacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/c/cc/NewJeans_theMEGASTUDY.jpg' //FONDO DE PANTALLA DE LA VISTA PRINCIPAL
                ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("INFORMACIÓN"),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INFORMACIÓN',
              style: GoogleFonts.concertOne(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.all(60),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pps.whatsapp.net/v/t61.24694-24/317007424_249186057676047_6898413599105878776_n.jpg?ccb=11-4&oh=01_AdQnoMSGcgWJtHpWdqX46ZPRUowupruLadLPBMQ-ukJJUg&oe=645E91A2'),
                  radius: 70,
                ),
              )
            ]),

            //NOMBRES Y APELLIDOS
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'NOMBRES Y APELLIDOS COMPLETOS :',
                textAlign: TextAlign.center,
                style: GoogleFonts.concertOne(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(
                    text: TextSpan(text: '', children: <TextSpan>[
                      TextSpan(
                        text: ' Antonella Jhanet Oyola Palomino             ',
                        style: GoogleFonts.concertOne(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange[900],
                        ),
                      ),
                    ]),
                  ),
                ),

                //AÑO DE NACIMEINTO
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: RichText(
                    text: TextSpan(text: '', children: <TextSpan>[
                      TextSpan(
                        text: '     FECHA DE NACIMIENTO:                      ',
                        style: GoogleFonts.concertOne(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '  06/01/2005',
                        style: GoogleFonts.concertOne(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange[900],
                        ),
                      ),
                    ]),
                  ),
                ),

                //CARRERA
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: RichText(
                    text: TextSpan(text: '', children: <TextSpan>[
                      TextSpan(
                        text: '     CARRERA TÉCNICA                      ',
                        style: GoogleFonts.concertOne(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '  DISEÑO Y DESARROLLO DE SOFTWARE',
                        style: GoogleFonts.concertOne(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange[900],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//VISTA DE galeria
class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://marketplace.canva.com/EAE3m9b8mvk/1/0/900w/canva-fondo-de-pantalla-para-m%C3%B3vil-ZKTpcjIUrhA.jpg' //FONDO DE PANTALLA DE LA VISTA PRINCIPAL
                ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("GALERÍA"),
            backgroundColor: Colors.pinkAccent,
          ),
          body: ListView(
            children: [
              Center(
                child: Text(
                  'MIS FOTOS',
                  style: GoogleFonts.concertOne(
                      fontSize: 45,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/c/cc/NewJeans_theMEGASTUDY.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    "https://scontent.flim31-1.fna.fbcdn.net/v/t1.6435-9/145055018_1377019269319504_5676015198026231918_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGfcYCVVDW0FOKuOeeU-Rh7pcM-U8ciPcmlwz5TxyI9yWA6HfXjrWD1yXoqNxF5j9o_J7KdSk78sELNQRZW6ywV&_nc_ohc=Fiu-6xFbRAsAX8lNCUc&_nc_ht=scontent.flim31-1.fna&oh=00_AfA44yNa-UE-CJUgljLZtvVz1UPNTq1ha8yhJBzWBaMZrg&oe=64793058"),
              )
            ],
          )),
    );
  }
}

// VISTA DE ARTISTAS
class Artistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://marketplace.canva.com/EAE3m9b8mvk/1/0/900w/canva-fondo-de-pantalla-para-m%C3%B3vil-ZKTpcjIUrhA.jpg' //FONDO DE PANTALLA DE LA VISTA PRINCIPAL
                ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("ARTISTAS FAVORITOS"),
            backgroundColor: Colors.amber,
          ),
          body: ListView(
            children: [
              Center(
                child: Text(
                  'MIS ARTISTAS FAVORITOS',
                  style: GoogleFonts.concertOne(
                      fontSize: 36,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Ariana_Grande_Grammys_Red_Carpet_2020.png/220px-Ariana_Grande_Grammys_Red_Carpet_2020.png"),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/c/cc/NewJeans_theMEGASTUDY.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/c/cc/NewJeans_theMEGASTUDY.jpg'),
              )
            ],
          )),
    );
  }
}
