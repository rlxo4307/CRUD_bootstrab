package org.hdcd.domain;

import java.time.LocalDateTime;

import javax.persistence.*;

import org.hibernate.annotations.UpdateTimestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name="$SITE_THESAURUS")
public class SiteThesaurus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 128, nullable = false)
    private String _head_word;

    @Lob
    private String _tail_word;

    @Column(length = 128, nullable = false)
    private String _memo;

    @Column(length = 32, nullable = false)
    private String _user_id;

    @UpdateTimestamp
    private LocalDateTime _up_dated;

}
