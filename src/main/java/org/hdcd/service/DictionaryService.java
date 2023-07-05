package org.hdcd.service;

import org.hdcd.domain.Member;
import org.hdcd.domain.SiteUdic;
import org.springframework.security.core.Authentication;

import java.util.List;

public interface DictionaryService {

    int insert(String word, String memo, Authentication authentication) throws Exception;

    int remove(String word, Authentication authentication) throws Exception;

    List<SiteUdic> list(String userId) throws Exception;
}
