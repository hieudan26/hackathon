package com.bezkoder.springjwt.models;

import lombok.Data;
import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "grade_subject")
@Data

public class GradeSubject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false)
    private Student student;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "subject_id", referencedColumnName = "id", nullable = false)
    private Subject subject;

    private int grade;
    private LocalDateTime gradeAt;

    // constructors, getters, and setters
}
