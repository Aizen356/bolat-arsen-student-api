package kz.bolat.studentapi.repository;

import kz.bolat.studentapi.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student, Long> {

    // Case-insensitive search of students by name (added by Bolat Arsen).
    List<Student> findByNameContainingIgnoreCase(String name);
}
