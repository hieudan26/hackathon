package com.bezkoder.springjwt.repository;

import com.bezkoder.springjwt.models.StudentSkill;
import com.bezkoder.springjwt.models.GradeSubject;
import com.bezkoder.springjwt.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StudentSkillRepository extends JpaRepository<StudentSkill, Long> {
    List<StudentSkill> findAllByStudent(Student student);
}
