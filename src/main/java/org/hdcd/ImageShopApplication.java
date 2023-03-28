package org.hdcd;

import org.hdcd.mock.DemoInterface;
import org.hdcd.mock.DemoService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;

@SpringBootApplication
@ComponentScan(excludeFilters = {@ComponentScan.Filter(type = FilterType.ASSIGNABLE_TYPE, classes = {DemoInterface.class, DemoService.class})})
public class ImageShopApplication {

  public static void main(String[] args) {
    SpringApplication.run(ImageShopApplication.class, args);
  }
}
