package com.bezkoder.springjwt.repository;

import com.bezkoder.springjwt.models.Student;
import com.bezkoder.springjwt.models.Subject;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SubjectRepository extends JpaRepository<Subject, Long> {
}
