package org.hdcd.service;

import java.util.ArrayList;
import java.util.List;
import java.time.LocalDateTime;

import org.hdcd.common.security.domain.CustomUser;
import org.hdcd.domain.Member;
import org.hdcd.domain.SiteUdic;
import org.hdcd.repository.DictionaryRepository;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class DictionaryServiceImpl implements DictionaryService {

    private final DictionaryRepository dictionaryRepository;


    @Override // 사용자 사전에 단어 추가
    public int insert(String word, String memo, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        List<SiteUdic> udicList = list(userId);
        int hasWord = 0;

        for(int i=0; i<udicList.size(); i++){
            if(word.equals(udicList.get(i).get_word())) {
                hasWord = 1;
                break;
            }
        }
        if(hasWord == 0){
            SiteUdic siteUdic = new SiteUdic();
            LocalDateTime now = LocalDateTime.now();

            siteUdic.set_word(word);
            siteUdic.set_memo(memo);
            siteUdic.set_user_id(userId);
            siteUdic.set_upDated(now);

            udicList.add(siteUdic);
            dictionaryRepository.save(siteUdic);
            return 1;
        }
        return 0;
    }

    @Override // 사용자 사전 리스트
    public List<SiteUdic> list(String userId) throws Exception {
        List<Object[]> dicArrays = dictionaryRepository.personalDiclist(userId);

        List<SiteUdic> udicList = new ArrayList<>();

        for(Object[] valueArray : dicArrays) {
            SiteUdic siteUdic = new SiteUdic();

            siteUdic.set_word((String)valueArray[0]);
            siteUdic.set_memo((String)valueArray[1]);
            siteUdic.set_user_id((String)valueArray[2]);
            siteUdic.set_upDated((LocalDateTime) valueArray[3]);

            udicList.add(siteUdic);
        }

        return udicList;
    }

}
