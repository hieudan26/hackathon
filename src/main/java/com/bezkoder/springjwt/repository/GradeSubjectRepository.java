package com.bezkoder.springjwt.repository;

import com.bezkoder.springjwt.models.Achivement;
import com.bezkoder.springjwt.models.GradeSubject;
import com.bezkoder.springjwt.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GradeSubjectRepository extends JpaRepository<GradeSubject, Long> {
    List<GradeSubject> findAllByStudent(Student student);
}
