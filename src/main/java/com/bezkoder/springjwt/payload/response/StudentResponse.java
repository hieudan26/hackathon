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
    Float training_point;
    Float social_work_score;
    Float achivement;

    Float skill_score;
    Float grade_point;
    Map<String, Float> StudentSkill;
    Map<String, Float> grade;
}
