package md.parstat.iais.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import md.parstat.iais.domains.LawEntity;

@RepositoryRestResource(collectionResourceRel = "law", path = "law")
public interface LawRepository extends CrudRepository<LawEntity, Long> {

}
