package de.lh39.liquibasemavendemo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Role {
    @Id
    private Long id;
    private String name;
}
