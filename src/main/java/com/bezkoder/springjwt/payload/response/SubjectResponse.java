package com.bezkoder.springjwt.payload.response;

import lombok.Builder;
import lombok.Data;

import java.util.Map;

@Data
@Builder
public class SubjectResponse {
    Long id;
    String name;

    Map<String, Float> skills;
}
