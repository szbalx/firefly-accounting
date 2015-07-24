package com.tri.erp.spring.repo;

import com.tri.erp.spring.model.AccountsPayableVoucher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by TSI Admin on 4/21/2015.
 */
public interface AccountsPayableVoucherRepo extends JpaRepository<AccountsPayableVoucher, Integer> {
    @Query(value = "SELECT e.code FROM AccountsPayableVoucher e WHERE year = :year ORDER BY id DESC LIMIT 1", nativeQuery = true)
    public Object findLatestApvCodeByYear(@Param("year") Integer year);
    public List<AccountsPayableVoucher> findByDocumentStatusId(Integer statusId);
}
