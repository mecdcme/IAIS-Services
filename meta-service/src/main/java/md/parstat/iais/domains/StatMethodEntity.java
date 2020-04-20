package md.parstat.iais.domains;

import java.util.List;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.StatMethod;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity(name = "StatMethod")
@Table(name = "stat_methods")
public class StatMethodEntity extends AbstractDomainObject implements StatMethod {

	@Column(name = "name_en")
	private String nameEn;

	@Column(name = "name_ro")
	private String nameRo;

	@Column(name = "name_ru")
	private String nameRu;

	// bi-directional many-to-one association to StatProcStatMeth
	@OneToMany(mappedBy = "statMethod")
	private List<StatProcStatMethEntity> statProcStatMeths;

	public StatMethodEntity() {
	}

}