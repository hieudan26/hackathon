package com.bezkoder.springjwt.payload.response;

import lombok.Builder;
import lombok.Data;

import java.util.Map;

@Data
@Builder
public class StudentResponse {
    Long id;
    String name;
    String mssv;
    Map<String, Long> achivement;
    Map<String, Integer> grade;
}
