package de.lh39.liquibasemavendemo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Role {
    @Id
    private Long id;
    private String name;
}
