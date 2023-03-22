package com.dnisha.k8s.cicd.project.web.cicdbackend;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class CiCdBackendApplicationTests {

	@Test
	void contextLoads() {
	}

	@Test
	void myTest(){
		final String name = "deepak";
		Assertions.assertEquals("mohan", name);
	}

}
