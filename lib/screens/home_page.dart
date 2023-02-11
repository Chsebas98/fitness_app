import 'package:fitness_app/widget/appbar_widget.dart';

import '../widget/widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        body: CustomScrollView(
          slivers: <Widget>[
            appBar(context, _scaffoldKey),
            const ExercisesWidget()
          ],
        ));
  }
}
