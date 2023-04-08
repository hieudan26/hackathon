package com.bezkoder.springjwt.repository;

import com.bezkoder.springjwt.models.GradeSubject;
import com.bezkoder.springjwt.models.Student;
import com.bezkoder.springjwt.models.SubjectSkill;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SubjectSkillRepository extends JpaRepository<SubjectSkill, Long> {
    List<SubjectSkill> findAllBySubject_Id(Long student);
    List<SubjectSkill> findAllBySubject_Name(String name);

}
