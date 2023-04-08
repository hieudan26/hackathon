package com.bezkoder.springjwt.payload.response;

import com.bezkoder.springjwt.models.SubjectSkill;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
@Builder
public class SubjectResponse {
    Long id;
    String name;

    Map<String, Float> skills;
    @JsonIgnore
    List<SubjectSkill> subjectSkillList;

}
