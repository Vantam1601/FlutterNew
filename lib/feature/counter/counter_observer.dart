import 'package:bloc/bloc.dart';

/// observe all state changes in app
class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    /// View change bloc in console
    print('${bloc.runtimeType} $change');
  }
}
