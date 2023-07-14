package org.hdcd.service;

import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDateTime;

import org.hdcd.common.security.domain.CustomUser;
import org.hdcd.domain.Member;
import org.hdcd.domain.SiteThesaurus;
import org.hdcd.domain.SiteUdic;
import org.hdcd.dto.SiteThesaurusDTO;
import org.hdcd.dto.SiteUdicDTO;
import org.hdcd.repository.DictionaryRepository;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestParam;

@RequiredArgsConstructor
@Service
public class DictionaryServiceImpl implements DictionaryService {

    private final DictionaryRepository dictionaryRepository;
    LocalDateTime currentTime = LocalDateTime.now(ZoneId.of("Asia/Seoul"));

    @Transactional
    @Override // 사용자 사전에 단어 추가
    public int insert(SiteUdic siteUdic, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();


        String word = siteUdic.get_word();
        String memo = siteUdic.get_memo();
        String userId = member.getUserId();

        List<SiteUdic> udicList = list_uDic(userId);

        for(int i=0; i<udicList.size(); i++){
            if(word.equals(udicList.get(i).get_word())) {
                return 0;
            }
        }

        try {
            dictionaryRepository.renew(word, memo, userId, currentTime);
        }catch (Exception e){
            e.printStackTrace();
        }

        return 1;
    }


    @Override // 사용자 사전의 단어 제거
    public int remove(String word, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        List<SiteUdic> udicList = list_uDic(userId);

        for(int i=0; i<udicList.size(); i++){
            if(word.equals(udicList.get(i).get_word())) {
                dictionaryRepository.personaluDicDelete(word);
                return 1;
            }
        }
        return 0;
    }
    @Transactional
    @Override // 사용자 사전의 단어 제거
    public int checkedRemoveThesaurus(SiteThesaurusDTO siteThesaurusDTO, Authentication authentication) throws Exception {

        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();
        List<String> dicList = dictionaryRepository.personalWordList_thesaurus(userId);

        String Str = siteThesaurusDTO.get_head_word();
        List<String> wordlist = new ArrayList<>();

        String[] splitWord = Str.split(",");

        for (int i=0; i < splitWord.length; i++) {
            wordlist.add(splitWord[i]);
        }

        int wordSize = wordlist.size();
        int count = 0;

        for (int i = 0; i < wordlist.size(); i++) {
            String word = wordlist.get(i);
            if (dicList.contains(word)) {
                dictionaryRepository.personalThesaurusDelete(word);
                count++;
            }
        }
        if(count == wordSize) return 1;

        return 0;
    }

    @Transactional
    @Override // 사용자 사전의 단어 제거
    public int checkedRemoveUdic(SiteUdicDTO siteUdicDTO, Authentication authentication) throws Exception {

        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();
        List<String> dicList = dictionaryRepository.personalWordList_uDic(userId);

        String Str = siteUdicDTO.get_word();
        List<String> wordlist = new ArrayList<>();

        String[] splitWord = Str.split(",");

        for (int i=0; i < splitWord.length; i++) {
            wordlist.add(splitWord[i]);
        }

        int wordSize = wordlist.size();
        int count = 0;

        for (int i = 0; i < wordlist.size(); i++) {
            String word = wordlist.get(i);
            if (dicList.contains(word)) {
                dictionaryRepository.personaluDicDelete(word);
                count++;
            }
        }
        if(count == wordSize) return 1;

        return 0;
    }


    @Override // 사용자 사전 단어 업데이트
    public int update (String word, String memo, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        List<SiteUdic> udicList = list_uDic(userId);

        for(int i=0; i<udicList.size(); i++){
            if(word.equals(udicList.get(i).get_word())) {
                try {
                    dictionaryRepository.personalDicUpdate(word, memo, currentTime);
                }catch (Exception e){
                    e.printStackTrace();
                }
                return 1;
            }
        }
        return 0;
    }


    @Override // 사용자 사전 리스트
        public List<SiteUdic> list_uDic(String userId) throws Exception {
            List<Object[]> dicArrays = dictionaryRepository.personalDicList_uDic(userId);

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


    @Override // 사용자 사전 리스트
    public List<SiteThesaurus> list_thesaurus(String userId) throws Exception {
        List<Object[]> dicArrays = dictionaryRepository.personalDicList_thesaurus(userId);

        List<SiteThesaurus> thesaurusList = new ArrayList<>();

        for(Object[] valueArray : dicArrays) {
            SiteThesaurus siteThesaurus = new SiteThesaurus();

            siteThesaurus.set_head_word((String)valueArray[0]);
            siteThesaurus.set_tail_word((String)valueArray[1]);
            siteThesaurus.set_memo((String)valueArray[2]);
            siteThesaurus.set_user_id((String)valueArray[3]);
            siteThesaurus.set_up_dated((LocalDateTime) valueArray[4]);

            thesaurusList.add(siteThesaurus);
        }

        return thesaurusList;
    }

}
