package org.khit.myapp.sample;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.ToString;


@AllArgsConstructor		//생성자 주입(객체를 new 한 것과 같다)
@ToString
@Component
public class Company {
	//필드(객체 필드)
	private Employee employee;
	
}
