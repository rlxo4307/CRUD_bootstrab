package org.hdcd.dto;

import lombok.*;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class SiteUdicDTO {
    private String _word;
    private String _memo;
    private String _user_id;
    private LocalDateTime _up_dated;
}
