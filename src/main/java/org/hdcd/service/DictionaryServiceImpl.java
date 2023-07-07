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
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class DictionaryServiceImpl implements DictionaryService {

    private final DictionaryRepository dictionaryRepository;


    @Transactional
    @Override // 사용자 사전에 단어 추가
    public int insert(String word, String memo, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        List<SiteUdic> udicList = list(userId);

        for(int i=0; i<udicList.size(); i++){
            if(word.equals(udicList.get(i).get_word())) {
                return 0;
            }
        }

//        SiteUdic siteUdic = new SiteUdic();
        LocalDateTime currentTime = LocalDateTime.now();

//        siteUdic.set_word(word);
//        siteUdic.set_memo(memo);
//        siteUdic.set_user_id(userId);
//        siteUdic.set_up_dated(currentTime);

        try {
            dictionaryRepository.renew(word, memo, userId, currentTime);
        }catch (Exception e){
            e.printStackTrace();
        }

//        try {
//            dictionaryRepository.save(siteUdic);
//        }catch (Exception e){
//            e.printStackTrace();
//        }
        return 1;
    }


    @Override // 사용자 사전의 단어 제거
    public int remove(String word, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        List<SiteUdic> udicList = list(userId);

        for(int i=0; i<udicList.size(); i++){
            if(word.equals(udicList.get(i).get_word())) {
                dictionaryRepository.deleteById(word);
                return 1;
            }
        }
        return 0;
    }

    @Override // 사용자 사전 단어 업데이트
    public int update (String word, String memo, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        List<SiteUdic> udicList = list(userId);

        SiteUdic siteUdic = new SiteUdic();
        LocalDateTime currentTime = LocalDateTime.now();

        siteUdic.set_word(word);
        siteUdic.set_memo(memo);
        siteUdic.set_user_id(userId);
        siteUdic.set_up_dated(currentTime);

        for(int i=0; i<udicList.size(); i++){
            if(word.equals(udicList.get(i).get_word())) {
                try {
                    dictionaryRepository.personalDicUpdate(siteUdic);
                }catch (Exception e){
                    e.printStackTrace();
                }
                return 1;
            }
        }
        return 0;
    }

    @Override // 사용자 사전 리스트
    public List<SiteUdic> list(String userId) throws Exception {
        List<Object[]> dicArrays = dictionaryRepository.personalDicList(userId);

        List<SiteUdic> udicList = new ArrayList<>();

        for(Object[] valueArray : dicArrays) {
            SiteUdic siteUdic = new SiteUdic();

            siteUdic.set_word((String)valueArray[0]);
            siteUdic.set_memo((String)valueArray[1]);
            siteUdic.set_user_id((String)valueArray[2]);
            siteUdic.set_up_dated((LocalDateTime) valueArray[3]);

            udicList.add(siteUdic);
        }

        return udicList;
    }

}
