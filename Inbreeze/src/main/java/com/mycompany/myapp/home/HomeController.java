package com.mycompany.myapp.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/inbreeze")
public class HomeController {

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "mainpage";
	}
	
}
