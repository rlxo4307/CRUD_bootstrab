package org.hdcd.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name="ACCOUNT_MNG")
public class AccountMng {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 32, nullable = false)
    private String _user_id;

    @Column(length = 10, nullable = false)
    private String _name;

    @Column(length = 128, nullable = false)
    private String _password;

    @Column(length = 1, nullable = false)
    private String _auth;

    @CreationTimestamp
    private LocalDateTime _created;

    @UpdateTimestamp
    private LocalDateTime _up_dated;

}
