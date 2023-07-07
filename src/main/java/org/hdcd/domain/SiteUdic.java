package org.hdcd.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name="$SITE_UDIC")
public class SiteUdic {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 128, nullable = false)
    private String _word;

    @Column(length = 128, nullable = false)
    private String _memo;

    @Column(length = 32, nullable = false)
    private String _user_id;

    @CreationTimestamp
    private LocalDateTime _up_dated;

}
