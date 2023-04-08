package com.bezkoder.springjwt.payload.response;

import com.bezkoder.springjwt.models.GradeSubject;
import com.bezkoder.springjwt.models.SubjectSkill;
import lombok.Builder;
import lombok.Data;

import java.util.List;
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
    Map<String, Float> studentSkill;
    List<SubjectResponse> gradeSubjects;
    Map<String, Float> grade;
}
