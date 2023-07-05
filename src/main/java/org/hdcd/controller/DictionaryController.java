package org.hdcd.controller;

import org.hdcd.common.security.domain.CustomUser;
import org.hdcd.domain.Member;
import org.hdcd.domain.SiteUdic;
import org.hdcd.service.DictionaryService;
import org.springframework.context.MessageSource;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;

import java.util.Locale;

@RequiredArgsConstructor
@Controller
@RequestMapping("/siteUdic")
public class DictionaryController {
    private final DictionaryService service;
    private final MessageSource messageSource;


    @GetMapping("/renew")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void renewForm(Model model) throws Exception {
        SiteUdic siteUdic = new SiteUdic();
        siteUdic.set_word("입력단어");

        model.addAttribute(siteUdic);
    }


    @PostMapping("/renew")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String insert(String word, String memo, RedirectAttributes rttr, Authentication authentication) throws Exception {

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
    public void removeForm(Model model) throws Exception {
        SiteUdic siteUdic = new SiteUdic();
        siteUdic.set_word("삭제단어");

        model.addAttribute(siteUdic);
    }


    @PostMapping("/remove")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String remove(String word, RedirectAttributes rttr, Authentication authentication) throws Exception {

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


    @GetMapping("/list")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public void list(Model model, Authentication authentication) throws Exception {
        CustomUser customUser = (CustomUser) authentication.getPrincipal();
        Member member = customUser.getMember();

        String userId = member.getUserId();

        model.addAttribute("list", service.list(userId));
    }


    @GetMapping("/insertResult")
    @PreAuthorize("hasAnyRole('ADMIN','MEMBER')")
    public String success() throws Exception {
        return "siteUdic/insertResult";
    }

}
