# Junit4 versus Junit5 and test filter

Run all the tests:
```shell
dhoover@shoggoth:~/src/junit5_with_bazel$ bazel test --nocache_test_results --test_output=streamed //...
WARNING: Streamed test output requested. All tests will be run locally, without sharding, one at a time
INFO: Build options have changed, discarding analysis cache.
INFO: Analysed 14 targets (0 packages loaded).
INFO: Found 12 targets and 2 test targets...
JUnit4 Test Runner
.FIVE bar
.FIVE foo

Time: 0.045

OK (2 tests)


BazelTestRunner exiting with a return value of 0
JVM shutdown hooks (if any) will run now.
The JVM will exit once they complete.

-- JVM shutdown starting at 2018-07-17 23:37:07 --

JUnit4 Test Runner
.FOUR bar
.FOUR foo

Time: 0.006

OK (2 tests)


BazelTestRunner exiting with a return value of 0
JVM shutdown hooks (if any) will run now.
The JVM will exit once they complete.

-- JVM shutdown starting at 2018-07-17 23:37:07 --

INFO: Elapsed time: 1.375s, Critical Path: 0.61s
INFO: 2 processes: 2 linux-sandbox.
INFO: Build completed successfully, 3 total actions
//src/test/java/com/deadmoose/foo:FiveTest                               PASSED in 0.4s
//src/test/java/com/deadmoose/foo:FourTest                               PASSED in 0.3s

Executed 2 out of 2 tests: 2 tests pass.
INFO: Build completed successfully, 3 total actions
```

Look into the test outputs to find the details about the testcase names:
```shell
dhoover@shoggoth:~/src/junit5_with_bazel$ grep 'testcase name' bazel-testlogs/src/test/java/com/deadmoose/foo/*/test.xml
bazel-testlogs/src/test/java/com/deadmoose/foo/FiveTest/test.xml:    <testcase name='bar()' classname='FiveTest' time='0.006' />
bazel-testlogs/src/test/java/com/deadmoose/foo/FiveTest/test.xml:    <testcase name='foo()' classname='FiveTest' time='0.0' />
bazel-testlogs/src/test/java/com/deadmoose/foo/FourTest/test.xml:    <testcase name='bar' classname='com.deadmoose.foo.FourTest' time='0.002' />
bazel-testlogs/src/test/java/com/deadmoose/foo/FourTest/test.xml:    <testcase name='foo' classname='com.deadmoose.foo.FourTest' time='0.0' />
```

Note how the JUnit5 ones are not fully qualified class names, and have parens after the method name.

So a fairly broad test filter works:
```shell
dhoover@shoggoth:~/src/junit5_with_bazel$ bazel test --nocache_test_results --test_output=streamed --test_filter=#foo //...
WARNING: Streamed test output requested. All tests will be run locally, without sharding, one at a time
INFO: Build options have changed, discarding analysis cache.
INFO: Analysed 14 targets (0 packages loaded).
INFO: Found 12 targets and 2 test targets...
JUnit4 Test Runner
.FOUR foo

Time: 0.012

OK (1 test)


BazelTestRunner exiting with a return value of 0
JVM shutdown hooks (if any) will run now.
The JVM will exit once they complete.

-- JVM shutdown starting at 2018-07-17 23:39:47 --

JUnit4 Test Runner
.FIVE foo

Time: 0.041

OK (1 test)


BazelTestRunner exiting with a return value of 0
JVM shutdown hooks (if any) will run now.
The JVM will exit once they complete.

-- JVM shutdown starting at 2018-07-17 23:39:47 --

INFO: Elapsed time: 1.420s, Critical Path: 0.61s
INFO: 2 processes: 2 linux-sandbox.
INFO: Build completed successfully, 3 total actions
//src/test/java/com/deadmoose/foo:FiveTest                               PASSED in 0.5s
//src/test/java/com/deadmoose/foo:FourTest                               PASSED in 0.3s

Executed 2 out of 2 tests: 2 tests pass.
INFO: Build completed successfully, 3 total actions
```

But the intellij plugin generates the following test_filters which don't match anything:

 * Running the class: `com.deadmoose.foo.FiveTest#`
 * Running an individual method: `com.deadmoose.foo.FiveTest#foo$`
