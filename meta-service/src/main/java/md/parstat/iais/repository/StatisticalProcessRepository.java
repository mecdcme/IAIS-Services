package md.parstat.iais.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import md.parstat.iais.domain.StatisticalProcess;

@RepositoryRestResource(collectionResourceRel = "process", path = "process")
public interface StatisticalProcessRepository extends CrudRepository<StatisticalProcess, Long> {

}
