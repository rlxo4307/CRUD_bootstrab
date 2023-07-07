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
    public List<Object[]> personalDicList(String userId);


//    @Transactional
//    @Modifying
//    @Query(value = "INSERT INTO SiteUdic (_word, _memo, _user_id, _up_dated) VALUES (:word, :memo, :userId, :currentTime)", nativeQuery = true)
//    SiteUdic renew(@Param("word") String word, @Param("memo") String memo, @Param("userId") String userId, @Param("currentTime") LocalDateTime currentTime);


    @Transactional
    @Modifying
    @Query(value = "INSERT INTO SiteUdic VALUES (_word = :word, _memo = :memo, _user_id = :userId, _up_dated = :currentTime)", nativeQuery = true)
    SiteUdic renew(@Param("word") String word, @Param("memo") String memo, @Param("userId") String userId, @Param("currentTime") LocalDateTime currentTime);


    @Transactional
    @Modifying
    @Query(value = "UPDATE SiteUdic SET _memo=:#{#SiteUdic.memo} WHERE _user_id LIKE :#{#siteUdic.userId}", nativeQuery = true)
    void personalDicUpdate(@Param("SiteUdic") SiteUdic siteUdic);

}
