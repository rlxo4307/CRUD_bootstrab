package org.hdcd.mock;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DemoService {

  private final DemoInterface demoInterface;


  public String workWithDependency() {
    return serviceJob(this.demoInterface.doSomething());
  }

  private String serviceJob(String dataFromDependency) {
    return dataFromDependency + " - service";
  }
}
