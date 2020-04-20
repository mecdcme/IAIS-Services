package md.parstat.iais.repository;

import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;

import md.parstat.iais.domains.StatisticalProcessEntity;




@Repository
public interface StatisticalProcessRepository extends CrudRepository<StatisticalProcessEntity, Long> {

}
