package org.hdcd.service;

import org.hdcd.domain.SiteUdic;
import org.springframework.security.core.Authentication;

import java.util.List;

public interface DictionaryService {

    public int insert(String word, String memo, Authentication authentication) throws Exception;
//    int insert(SiteUdic siteUdic) throws Exception;

    public int remove(String word, Authentication authentication) throws Exception;

    public int update (String word, String originWord, String memo, Authentication authentication) throws Exception;

    public List<SiteUdic> list(String userId) throws Exception;
}
