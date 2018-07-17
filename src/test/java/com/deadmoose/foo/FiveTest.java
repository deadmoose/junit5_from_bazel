package com.deadmoose.foo;

import org.junit.jupiter.api.Test;
import org.junit.platform.runner.JUnitPlatform;
import org.junit.runner.RunWith;

@RunWith(JUnitPlatform.class)
public class FiveTest {

  @Test
  public void foo() {
    System.err.println("FIVE foo");
  }

  @Test
  public void bar() {
    System.err.println("FIVE bar");
  }
}
