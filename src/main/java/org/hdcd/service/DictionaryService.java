package org.hdcd.service;

import org.hdcd.domain.Member;
import org.hdcd.domain.SiteUdic;
import org.springframework.security.core.Authentication;

import java.util.List;

public interface DictionaryService {
//    public void insert(SiteUdic siteUdic) throws Exception;

    int insert(String word, String memo, Authentication authentication) throws Exception;

    public List<SiteUdic> list(String userId) throws Exception;
}
