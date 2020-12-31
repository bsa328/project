package com.example.project.controller.calendarCtr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calendar")
public class CalendarCtr {

	@RequestMapping("")
	public String getCalendarMain() {
		return "calendar/calendar_main";
	}
}
