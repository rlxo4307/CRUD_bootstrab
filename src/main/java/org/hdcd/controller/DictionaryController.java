package org.hdcd.controller;

import org.codehaus.jackson.map.util.JSONPObject;
import org.hdcd.common.security.domain.CustomUser;
import org.hdcd.domain.Member;
import org.hdcd.domain.SiteUdic;
import org.hdcd.dto.SiteThesaurusDTO;
import org.hdcd.dto.SiteUdicDTO;
import org.hdcd.repository.DictionaryRepository;
import org.hdcd.service.DictionaryService;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.context.MessageSource;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@RequiredArgsConstructor
@Controller
@RequestMapping("/siteUdic")
public class DictionaryController {
    private final DictionaryService service;
    private final DictionaryRepository dictionaryRepository;
    private final MessageSource messageSource;


    @GetMapping("/manage") // 사용자 사전 관리
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String manage(SiteUdicDTO siteUdicDTO, SiteThesaurusDTO siteThesaurusDTO, Model model, RedirectAttributes rttr, Authentication authentication) throws Exception {

        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        model.addAttribute("list_uDic", service.list_uDic(userId));
        model.addAttribute("list_thesaurus", service.list_thesaurus(userId));

        return "siteUdic/manage";
    }

    @PostMapping("/manageThesaurus") // 사용자 사전 단어 제거
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String manageCheckedRemove1(@RequestParam List<String> wordList11, RedirectAttributes rttr, Authentication authentication) throws Exception {

        int success = service.checkedRemoveThesaurus(wordList11, authentication);

        String message = "";
        String url = "redirect:/siteUdic/manage";

        if(success == 1) {
            message = messageSource.getMessage("dic.removeComplete", null, Locale.KOREAN);
        }
        if(success == 0) {
            message = messageSource.getMessage("dic.removeFail", null, Locale.KOREAN);
        }
        rttr.addFlashAttribute("msg", message);
        rttr.addFlashAttribute("url", url);

        return "redirect:/siteUdic/manage";
    }

    @PostMapping("/manageUdic") // 사용자 사전 단어 제거, List 방식
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String manageCheckedRemove2(@RequestParam List<String> wordList22, Model model, RedirectAttributes rttr, Authentication authentication) throws Exception {

        int success = service.checkedRemoveUdic(wordList22, authentication);

        String message = "";
        String url = "redirect:/siteUdic/manage";

        if(success == 1) {
            message = messageSource.getMessage("dic.removeComplete", null, Locale.KOREAN);
        }
        if(success == 0) {
            message = messageSource.getMessage("dic.removeFail", null, Locale.KOREAN);
        }
        rttr.addFlashAttribute("msg", message);
        rttr.addFlashAttribute("url", url);

        return "redirect:/siteUdic/manage";
    }

    //    @PostMapping("/manageThesaurus") // 사용자 url 단어 제거, DTO 방식
//    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
//    public String manageCheckedRemove1(SiteThesaurusDTO siteThesaurusDTO, RedirectAttributes rttr, Authentication authentication) throws Exception {
//
//        int success = service.checkedRemoveThesaurus(siteThesaurusDTO, authentication);
//        String message = "";
//
//        if(success == 1) {
//            message = messageSource.getMessage("dic.removeComplete", null, Locale.KOREAN);
//        }
//        if(success == 0) {
//            message = messageSource.getMessage("dic.removeFail", null, Locale.KOREAN);
//        }
//        rttr.addFlashAttribute("msg", message);
//
//        return "redirect:/siteUdic/manage";
//    }
//
//
//    @PostMapping("/manageUdic") // 사용자 사전 단어 제거, DTO 방식
//    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
//    public String manageCheckedRemove2(SiteUdicDTO siteUdicDTO, RedirectAttributes rttr, Authentication authentication) throws Exception {
//
//        int success = service.checkedRemoveUdic(siteUdicDTO, authentication);
//        String message = "";
//
//        if(success == 1) {
//            message = messageSource.getMessage("dic.removeComplete", null, Locale.KOREAN);
//        }
//        if(success == 0) {
//            message = messageSource.getMessage("dic.removeFail", null, Locale.KOREAN);
//        }
//        rttr.addFlashAttribute("msg", message);
//
//        return "redirect:/siteUdic/manage";
//    }



    @GetMapping("/renew")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void renewForm(SiteUdicDTO siteUdicDTO, Model model, RedirectAttributes rttr, Authentication authentication) throws Exception {

        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        List<SiteUdic> list = service.list_uDic(userId);
        List<String> udicList = new ArrayList<>();

        for(int i=0; i<list.size(); i++){
            udicList.add(list.get(i).get_word());
        }

        model.addAttribute("udicList", udicList);
    }

    @PostMapping("/renew") // 사용자 사전 갱신
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String insert(SiteUdicDTO siteUdicDTO, RedirectAttributes rttr, Authentication authentication) throws Exception {

        String word = siteUdicDTO.get_word();
        String memo = siteUdicDTO.get_memo();

        SiteUdic siteUdic = new SiteUdic();
        siteUdic.set_word(word);
        siteUdic.set_memo(memo);

        int success = service.insert(siteUdic, authentication);
        String message = "";

        if(success == 1) {
            message = messageSource.getMessage("dic.renewComplete", null, Locale.KOREAN);
        }
        if(success == 0) {
            message = messageSource.getMessage("dic.renewFail", null, Locale.KOREAN);
        }
        rttr.addFlashAttribute("msg", message);

        return "redirect:/siteUdic/insertResult";
    }


    @GetMapping("/remove")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void removeForm(SiteUdicDTO siteUdicDTO) throws Exception {
    }

    @PostMapping("/remove") // 사용자 사전 단어 제거
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String remove(SiteUdicDTO siteUdicDTO, RedirectAttributes rttr, Authentication authentication) throws Exception {

        String word = siteUdicDTO.get_word();

        int success = service.remove(word, authentication);
        String message = "";

        if(success == 1) {
            message = messageSource.getMessage("dic.removeComplete", null, Locale.KOREAN);
        }
        if(success == 0) {
            message = messageSource.getMessage("dic.removeFail", null, Locale.KOREAN);
        }
        rttr.addFlashAttribute("msg", message);

        return "redirect:/siteUdic/insertResult";
    }


    @GetMapping("/modify")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void updateForm(SiteUdicDTO siteUdicDTO, @RequestParam(value = "_word") String _word, Model model, Authentication authentication) throws Exception {

        siteUdicDTO.set_word(_word);

        model.addAttribute("siteUdicDTO", siteUdicDTO);
    }

    @PostMapping("/modify") // 사용자 사전 업데이트
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String update(SiteUdicDTO siteUdicDTO, RedirectAttributes rttr, Authentication authentication) throws Exception {

        String word = siteUdicDTO.get_word();
        String memo = siteUdicDTO.get_memo();

        int success = service.update(word, memo, authentication);
        String message = "";

        if(success == 1) {
            message = messageSource.getMessage("dic.modifyComplete", null, Locale.KOREAN);
        }
        if(success == 0) {
            message = messageSource.getMessage("dic.modifyFail", null, Locale.KOREAN);
        }
        rttr.addFlashAttribute("msg", message);

        return "redirect:/siteUdic/insertResult";
    }


    @GetMapping("/list") // 사용자 사전 목록
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void list(Model model, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        model.addAttribute("list", service.list_uDic(userId));
    }


    @GetMapping("/insertResult") // 사용자 사전 CRUD 결과
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String success() throws Exception {
        return "siteUdic/insertResult";
    }

    @GetMapping("/ajax") // 사용자 사전 CRUD 결과
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void ajaxTestForm() throws Exception {

    }

    @ResponseBody
    @RequestMapping(value = "/ajax")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public HashMap<String, Object> ajaxTest(@RequestBody HashMap<String, Object> map) throws Exception {

        map.put("name", "한기태");
        map.put("phone", "010-1588-3082");

        return map;
    }

}
