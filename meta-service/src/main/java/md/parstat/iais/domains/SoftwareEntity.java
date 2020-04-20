package md.parstat.iais.domains;

import java.util.List;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.Software;

@Data
@EqualsAndHashCode(callSuper = true)
@Entity(name = "Software")
@Table(name = "software", schema = "iais_meta")
public class SoftwareEntity extends AbstractDomainObject implements Software {

	@Column(name = "name_en")
	private String nameEn;

	@Column(name = "name_ro")
	private String nameRo;

	@Column(name = "name_ru")
	private String nameRu;

	// bi-directional many-to-one association to StatProcSoftware
	@OneToMany(mappedBy = "software")
	private List<StatProcSoftwareEntity> statProcSoftwares;

}