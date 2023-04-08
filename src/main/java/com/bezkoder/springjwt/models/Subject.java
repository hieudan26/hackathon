package com.bezkoder.springjwt.models;

import javax.persistence.*;

import lombok.*;

@Entity
@Table(name = "subject")
@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "description", nullable = false)
    private String description;


    // You can also define relationships with other entities here using JPA annotations

}
