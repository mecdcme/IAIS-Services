package md.parstat.iais.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import md.parstat.iais.domain.Law;

@RepositoryRestResource(collectionResourceRel = "law", path = "law")
public interface LawRepository extends PagingAndSortingRepository<Law, Long> {

}
