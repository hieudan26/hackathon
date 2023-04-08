package com.bezkoder.springjwt.security.services;

import com.bezkoder.springjwt.models.*;
import com.bezkoder.springjwt.payload.response.StudentResponse;
import com.bezkoder.springjwt.payload.response.SubjectResponse;
import com.bezkoder.springjwt.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class StudentService {
    private final StudentRepository studentRepository;
    private final StudentSkillRepository StudentSkillRepository;
    private final GradeSubjectRepository gradeSubjectRepository;

    private final SubjectRepository subjectRepository;
    private final SubjectSkillRepository subjectSkillRepository;
    private final RestTemplate restTemplate = new RestTemplate();


    public Student getStudentById(Long id) {
        var student = studentRepository.findById(id);
        return student.orElse(null);
    }

    public StudentResponse getStudentSkill(Long id) {
        var student = getStudentById(id);
        var skills = StudentSkillRepository.findAllByStudent(student);
        Map<String, Float> mapSKill = new HashMap<>();
        Float skill_score = 0.0f;
        for(var a : skills) {
            mapSKill.put(a.getSkill().getName(), a.getScore());
            skill_score+= a.getScore();
        }
        Float grade_score = 0.0f;

        var subjects = gradeSubjectRepository.findAllByStudent(student);
        Map<String, Float> mapSubjects = new HashMap<>();
        for(var a : subjects) {
            mapSubjects.put(a.getSubject().getName(), a.getScore());
            grade_score+=a.getScore();
        }
        skill_score/=mapSKill.size();
        grade_score/=mapSubjects.size();

        return StudentResponse.builder().studentSkill(mapSKill)
                .gradeSubjects(subjects.stream().map((item)-> getListSubjectSkillById(item.getSubject().getId())).toList())
                .grade(mapSubjects)
                .name(student.getName())
                .mssv(student.getStudent_id())
                .social_work_score(student.getSocial_work_score())
                .training_point(student.getTraining_point())
                .skill_score(skill_score)
                .grade_point(grade_score)
                .achivement((skill_score+grade_score)/2)
                .id(student.getId())
                .build();
    }

    public List<GradeSubject> getStudentListSubject(Long id) {
        var student = getStudentById(id);
        var temp = gradeSubjectRepository.findAllByStudent(student);
        return temp;
    }

    private Subject getSubjectById(Long id) {
        var subject = subjectRepository.findById(id);
        return subject.orElse(null);
    }

    public List<SubjectResponse> getSubject() {
        var list = subjectRepository.findAll();
        List<SubjectResponse> subjectResponses = new ArrayList<>();
        for(var subject: list) {
            var temp = subjectSkillRepository.findAllBySubject_Id(subject.getId());
            Map<String , Float> mapSkills = new HashMap<>();
            for(var a : temp) {
                mapSkills.put(a.getSkill().getName(), a.getScore());
            }
            subjectResponses.add(SubjectResponse.builder()
                    .skills(mapSkills)
                    .name(temp.get(0).getSubject().getName()).subjectSkillList(temp).id(subject.getId()).build());
        }
        return subjectResponses;
    }

    public List<StudentResponse> getStudents() {
        var temp = studentRepository.findAll();
        List<StudentResponse> list = new ArrayList<>();
        for (var student : temp) {

            list.add(getStudentSkill(student.getId()));
        }
        return list;
    }

    public SubjectResponse getListSubjectSkillById(Long id) {
        var temp = subjectSkillRepository.findAllBySubject_Id(id);
        Map<String , Float> mapSkills = new HashMap<>();
        for(var a : temp) {
            mapSkills.put(a.getSkill().getName(), a.getScore());
        }
        if(temp.isEmpty()) {
            return SubjectResponse.builder()
                    .skills(mapSkills)
                    .name(null)
                    .subjectSkillList(temp)
                    .id(id).build();
        }
        return SubjectResponse.builder()
                .skills(mapSkills)
                .name(temp.get(0).getSubject().getName())
                .subjectSkillList(temp)
                .id(id).build();

    }

    public SubjectResponse getListSubjectSkillByName(String name) {
        var temp = subjectSkillRepository.findAllBySubject_Name(name);
        Map<String , Float> mapSkills = new HashMap<>();
        for(var a : temp) {
            mapSkills.put(a.getSkill().getName(), a.getScore());
        }
        return SubjectResponse.builder()
                .skills(mapSkills)
                .name(temp.get(0).getSubject().getName())
                .id(temp.get(0).getId()).build();
    }


    public String callAI(String name) {
        String fooResourceUrl
                = "https://www.google.com/";
        ResponseEntity<String> response
                = restTemplate.getForEntity(fooResourceUrl, String.class);
        return response.getBody();
    }
}
