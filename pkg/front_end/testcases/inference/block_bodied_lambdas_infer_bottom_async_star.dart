// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*@testedFeatures=inference*/
library test;

import 'dart:async';

main() async {
  var /*@type=() → Stream<Null>*/ f = /*@returnType=Stream<Null>*/ () async* {
    yield null;
  };
  Stream y = /*@promotedType=none*/ f();
  Stream<String> z = /*@promotedType=none*/ f();
  String s = await /*@promotedType=none*/ f().first;
}
