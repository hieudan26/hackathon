package com.bezkoder.springjwt.controllers;

import com.bezkoder.springjwt.models.*;
import com.bezkoder.springjwt.payload.response.StudentResponse;
import com.bezkoder.springjwt.payload.response.SubjectResponse;
import com.bezkoder.springjwt.security.services.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/students")
@RequiredArgsConstructor
public class HackathonController {
    private final StudentService studentService;

    @GetMapping("/{id}")
    public ResponseEntity<StudentResponse> getStudentById(@PathVariable Long id) {
        var subjects = studentService.getStudentSkill(id);
        return ResponseEntity.ok(subjects);
    }

    @GetMapping("")
    public ResponseEntity<List<StudentResponse>> getStudent() {
        var students = studentService.getStudents();
        return ResponseEntity.ok(students);
    }

    @GetMapping("/subjects")
    public ResponseEntity<List<SubjectResponse>> getSubjectSkillsByName() {
        var subject = studentService.getSubject();
        return ResponseEntity.ok(subject);
    }

    @GetMapping("/subjects/{id}")
    public ResponseEntity<SubjectResponse> getSubjectSkillsById(@PathVariable Long id) {
        var subject = studentService.getListSubjectSkillById(id);
        return ResponseEntity.ok(subject);
    }
}
