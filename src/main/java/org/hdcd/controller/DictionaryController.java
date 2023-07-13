package org.hdcd.controller;

import org.hdcd.common.security.domain.CustomUser;
import org.hdcd.domain.Member;
import org.hdcd.domain.SiteThesaurus;
import org.hdcd.domain.SiteUdic;
import org.hdcd.dto.SiteUdicDTO;
import org.hdcd.service.DictionaryService;
import org.springframework.context.MessageSource;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;

import java.util.List;
import java.util.Locale;

@RequiredArgsConstructor
@Controller
@RequestMapping("/siteUdic")
public class DictionaryController {
    private final DictionaryService service;
    private final MessageSource messageSource;


//    @GetMapping("/manage")
//    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
//    public void manageForm(SiteUdic siteUdic, Model model) throws Exception {
//        SiteUdic siteUdic = new SiteUdic();
//        siteUdic.set_word("단어 관리");
//
//        model.addAttribute(siteUdic);
//    }

    @GetMapping("/manage") // 사용자 사전 관리
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String manage(@RequestParam(value ="wordList22[]", required = false) List<String> wordList2,
                       SiteUdic siteUdic, SiteThesaurus siteThesaurus, Model model, RedirectAttributes rttr, Authentication authentication) throws Exception {

        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        model.addAttribute("list_uDic", service.list_uDic(userId));
        model.addAttribute("list_thesaurus", service.list_thesaurus(userId));

        return "siteUdic/manage";
    }

    @PostMapping("/manage") // 사용자 사전 단어 제거
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String manageCheckedRemove(@RequestParam(value ="wordList22[]", required = false) List<String> wordList22,
                                      SiteUdic siteUdic, SiteThesaurus siteThesaurus, RedirectAttributes rttr, Authentication authentication) throws Exception {

        int success = service.checkedRemove(wordList22, authentication);
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


    @GetMapping("/renew")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void renewForm(SiteUdic siteUdic) throws Exception {
    }

    @PostMapping("/renew") // 사용자 사전 갱신
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String insert(SiteUdicDTO siteUdicDTO, RedirectAttributes rttr, Authentication authentication) throws Exception {

        String word = siteUdicDTO.get_word();
        String memo = siteUdicDTO.get_memo();

        int success = service.insert(word, memo, authentication);
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
    public void removeForm(SiteUdic siteUdic) throws Exception {
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
    public void updateForm(SiteUdic siteUdic, @RequestParam(value = "_word") String _word, Model model, Authentication authentication) throws Exception {

        siteUdic.set_word(_word);

        model.addAttribute("siteUdic", siteUdic);
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

}
