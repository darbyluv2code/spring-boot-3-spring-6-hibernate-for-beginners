package com.luv2code.springcoredemo;

import org.springframework.stereotype.Component;

@Component //marks class as spring bean  // makes the bean available for dependency injection
public class CricketCoach implements Coach {
    @Override
    public String getDailyWorkout() {
        return "Practice fast bowling for 15 minutes";
    }
}
