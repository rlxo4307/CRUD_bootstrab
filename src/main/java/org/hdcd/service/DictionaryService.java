package org.hdcd.service;

import org.hdcd.domain.QSiteUdic;
import org.hdcd.domain.SiteThesaurus;
import org.hdcd.domain.SiteUdic;
import org.hdcd.dto.SiteUdicDTO;
import org.springframework.security.core.Authentication;

import java.util.List;

public interface DictionaryService {

    public int insert(SiteUdic siteUdic, Authentication authentication) throws Exception;

    public int remove(String word, Authentication authentication) throws Exception;

    public int checkedRemove(SiteUdicDTO siteUdicDTO, Authentication authentication) throws Exception;

    public int update (String word, String memo, Authentication authentication) throws Exception;

    public List<SiteUdic> list_uDic(String userId) throws Exception;

    public List<SiteThesaurus> list_thesaurus(String userId) throws Exception;
}
