// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*@testedFeatures=inference*/
library test;

typedef void ToValue<T>(T value);

main() {
  ToValue<T> f<T>(T x) => null;
  var /*@type=ToValue<int>(int value) → void*/ x = f<int>(42);
  var /*@type=ToValue<int>(int value) → void*/ y = f(42);
  ToValue<int> takesInt = /*@promotedType=none*/ x;
  takesInt = /*@promotedType=none*/ y;
}
