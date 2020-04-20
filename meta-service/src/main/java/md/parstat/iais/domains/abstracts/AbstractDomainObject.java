package md.parstat.iais.domains.abstracts;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import md.parstat.iais.domains.interfaces.common.DomainObject;

@MappedSuperclass
public class AbstractDomainObject implements DomainObject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public AbstractDomainObject() {

    }

    @Override
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }
}
