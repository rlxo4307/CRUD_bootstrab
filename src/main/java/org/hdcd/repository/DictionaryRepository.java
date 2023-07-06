package org.hdcd.repository;

import org.hdcd.domain.ChargeCoin;
import org.hdcd.domain.SiteUdic;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface DictionaryRepository extends JpaRepository<SiteUdic, String> {

    @Query("SELECT _word, _memo, _user_id, _upDated "
            + "FROM SiteUdic "
            + "WHERE _user_id LIKE ?1 ")
    public List<Object[]> personalDicList(String userId);

}
