package org.hdcd.dto;

import java.time.LocalDateTime;

public class SiteUdicDTO {

    private String _word;
    private String _memo;
    private String _user_id;
    private LocalDateTime _up_dated;

    public SiteUdicDTO(String _word, String _memo, String _user_id, LocalDateTime _up_dated){
        this._word = _word;
        this._memo = _memo;
        this._user_id = _user_id;
        this._up_dated = _up_dated;
    }

    public String get_word(){
        return _word;
    }
    public String get_memo() {
        return _memo;
    }
    public String get_user_id(){
        return _user_id;
    }

    public LocalDateTime get_up_dated(){
        return _up_dated;
    }

}
