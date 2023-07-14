package org.hdcd.dto;

import lombok.*;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class SiteThesaurusDTO {
    private String _head_word;
    private String _tail_word;
    private String _memo;
    private String _user_id;
    private LocalDateTime _up_dated;
}
