package org.hdcd.repository;

import org.hdcd.domain.ChargeCoin;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ChargeCoinRepository extends JpaRepository<ChargeCoin, Long> {

    @Query("SELECT cc.historyNo, cc.amount, cc.regDate "
            + "FROM Member m "
            + "INNER JOIN ChargeCoin cc ON cc.userNo = m.userNo "
            + "WHERE m.userNo = cc.userNo AND cc.userNo=:userNo ORDER BY cc.historyNo asc")
    public List<Object[]> personalList(@Param("userNo") Long userNo);


//    @Query(value = "SELECT CASE WHEN COUNT(:aliasName) > 0 THEN 'true' ELSE 'false' END FROM indexing_log WHERE _alias_name = :aliasName FOR UPDATE", nativeQuery = true)
//    String isRowExists(@Param("aliasName") String aliasName);

}
