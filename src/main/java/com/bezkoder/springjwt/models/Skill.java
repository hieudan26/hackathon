package com.bezkoder.springjwt.models;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "skill")
public class Skill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    // Constructors, getters and setters omitted for brevity
}
