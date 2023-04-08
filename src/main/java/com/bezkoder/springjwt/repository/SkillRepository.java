package com.bezkoder.springjwt.repository;

import com.bezkoder.springjwt.models.Skill;
import com.bezkoder.springjwt.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SkillRepository extends JpaRepository<Skill, Long> {
}
