import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Debouncer useDebouncer(int milliseconds) {
  final debouncer = useMemoized(() => Debouncer(milliseconds: milliseconds), [milliseconds]);

  useEffect(() {
    return debouncer.dispose;
  }, [debouncer]);

  return debouncer;
}

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
