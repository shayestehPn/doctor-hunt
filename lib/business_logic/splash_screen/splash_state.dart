abstract class SplashState {

  const SplashState();

}

class Initial extends SplashState {

  const Initial();

}

class Loading extends SplashState {

  const Loading();

}


class Success extends SplashState {

  const Success();

}


class Failure extends SplashState {

  String error="";

  Failure({required this.error});

}