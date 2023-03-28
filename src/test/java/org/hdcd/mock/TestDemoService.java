package org.hdcd.mock;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
public class TestDemoService {

  @InjectMocks
  DemoService demoService;
  @Mock
  DemoInterface demoInterface;

  @Test
  public void testMockDemoService() {
    String expected = "hello world - service";
    when(demoInterface.doSomething()).thenReturn("hello world");
    assertEquals(expected, demoService.workWithDependency());
  }
}
