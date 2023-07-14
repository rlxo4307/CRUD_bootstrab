package org.hdcd.repository;

import org.hdcd.domain.SiteUdic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

public interface DictionaryRepository extends JpaRepository<SiteUdic, String> {
    @Query("SELECT _word, _memo, _user_id, _up_dated "
            + "FROM SiteUdic "
            + "WHERE _user_id LIKE ?1 ")
    List<Object[]> personalDicList_uDic(String userId);

    @Query("SELECT _word "
            + "FROM SiteUdic "
            + "WHERE _user_id LIKE ?1 ")
    List<String> personalWordList_uDic(String userId);

    @Query("SELECT _head_word, _tail_word, _memo, _user_id, _up_dated "
            + "FROM SiteThesaurus "
            + "WHERE _user_id LIKE ?1 ")
    List<Object[]> personalDicList_thesaurus(String userId);

    @Query("SELECT _head_word "
            + "FROM SiteThesaurus "
            + "WHERE _user_id LIKE ?1 ")
    List<String> personalWordList_thesaurus(String userId);

    @Transactional
    @Modifying
    @Query(value = "INSERT INTO $Site_Udic (_word, _memo, _user_id, _up_dated) VALUES (?1, ?2, ?3, ?4)", nativeQuery = true)
    void renew(@Param("word") String word, @Param("memo") String memo, @Param("userId") String userId, @Param("currentTime") LocalDateTime currentTime);

    @Transactional
    @Modifying
    @Query(value = "UPDATE $Site_Udic SET _memo=:memo, _up_dated=:currentTime WHERE _word LIKE :word", nativeQuery = true)
    void personalDicUpdate(@Param("word") String word, @Param("memo") String memo, @Param("currentTime") LocalDateTime currentTime);

    @Transactional
    @Modifying
    @Query(value = "DELETE FROM $Site_Udic WHERE _word LIKE :word", nativeQuery = true)
    void personaluDicDelete(@Param("word") String word);

    @Transactional
    @Modifying
    @Query(value = "DELETE FROM $Site_Thesaurus WHERE _head_word LIKE :word", nativeQuery = true)
    void personalThesaurusDelete(@Param("word") String word);

//    @Transactional
//    @Modifying
//    @Query(value = "INSERT INTO $Site_Udic (_word, _memo, _user_id, _up_dated) VALUES (?1, ?2, ?3, ?4)", nativeQuery = true)
//    void renew(String word, String memo, String userId, LocalDateTime currentTime);
//
//    @Transactional
//    @Modifying
//    @Query(value = "INSERT INTO $Site_Udic VALUES (?1, ?2, ?3, ?4)", nativeQuery = true)
//    void renew(String word, String memo, String userId, LocalDateTime currentTime);
}
