import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class RutinaIndScreen extends StatefulWidget {
  const RutinaIndScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<RutinaIndScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Crear y almacenar el VideoPlayerController. El VideoPlayerController
    // ofrece distintos constructores diferentes para reproducir videos desde assets, archivos,
    // o internet.
    _controller = VideoPlayerController.asset("assets/messi.mp4");

    // Inicializa el controlador y almacena el Future para utilizarlo luego
    _initializeVideoPlayerFuture = _controller.initialize();

    // Usa el controlador para hacer un bucle en el vídeo
    _controller.setLooping(false);

    super.initState();
  }

  @override
  void dispose() {
    // Asegúrate de despachar el VideoPlayerController para liberar los recursos
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¿Cómo?'),
      ),
      // Usa un FutureBuilder para visualizar un spinner de carga mientras espera a que
      // la inicialización de VideoPlayerController finalice.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Si el VideoPlayerController ha finalizado la inicialización, usa
            // los datos que proporciona para limitar la relación de aspecto del VideoPlayer
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Usa el Widget VideoPlayer para mostrar el vídeo
              child: VideoPlayer(_controller),
            );
          } else {
            // Si el VideoPlayerController todavía se está inicializando, muestra un
            // spinner de carga
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Envuelve la reproducción o pausa en una llamada a `setState`. Esto asegura
          // que se muestra el icono correcto
          setState(() {
            // Si el vídeo se está reproduciendo, pausalo.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // Si el vídeo está pausado, reprodúcelo
              _controller.play();
            }
          });
        },
        // Muestra el icono correcto dependiendo del estado del vídeo.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ), // Esta coma final hace que el formateo automático sea mejor para los métodos de compilación.
    );
  }
}
