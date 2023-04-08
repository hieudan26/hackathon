package com.bezkoder.springjwt.security.services;

import com.bezkoder.springjwt.models.*;
import com.bezkoder.springjwt.payload.response.StudentResponse;
import com.bezkoder.springjwt.payload.response.SubjectResponse;
import com.bezkoder.springjwt.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

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


    public Student getStudentById(Long id) {
        var student = studentRepository.findById(id);
        return student.orElse(null);
    }

    public StudentResponse getStudentSkill(Long id) {
        var student = getStudentById(id);
        var skills = StudentSkillRepository.findAllByStudent(student);
        Map<String, Float> mapSKill = new HashMap<>();
        for(var a : skills) {
            mapSKill.put(a.getSkill().getName(), a.getScore());
        }

        var subjects = gradeSubjectRepository.findAllByStudent(student);
        Map<String, Float> mapSubjects = new HashMap<>();
        for(var a : subjects) {
            mapSubjects.put(a.getSubject().getName(), a.getGrade());
        }
        return StudentResponse.builder().StudentSkill(mapSKill)
                .grade(mapSubjects).name(student.getName()).mssv(student.getStudent_id()).id(student.getId()).build();
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

    public List<Subject> getSubject() {
        var temp = subjectRepository.findAll();
        return temp;
    }

    public SubjectResponse getListSubjectSkillById(Long id) {
        var temp = subjectSkillRepository.findAllBySubject_Id(id);
        Map<String , Float> mapSkills = new HashMap<>();
        for(var a : temp) {
            mapSkills.put(a.getSkill().getName(), a.getScore());
        }
        return SubjectResponse.builder()
                .skills(mapSkills)
                .name(temp.get(0).getSubject().getName()).id(temp.get(0).getId()).build();

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
}
