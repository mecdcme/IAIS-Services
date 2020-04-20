package md.parstat.iais.domains;

import java.util.List;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;
import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.LawType;


@Data
@Entity(name = "LawType")
@EqualsAndHashCode(callSuper = true)
@Table(name = "law_type", schema = "iais_meta")
public class LawTypeEntity extends AbstractDomainObject implements LawType {

	@Column(name = "type_en")
	private String typeEn;

	@Column(name = "type_ro")
	private String typeRo;

	@Column(name = "type_ru")
	private String typeRu;

	// bi-directional many-to-one association to Law
	@OneToMany(mappedBy = "lawType")
	private List<LawEntity> laws;

}