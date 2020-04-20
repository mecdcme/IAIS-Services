package md.parstat.iais.domains;

import java.util.List;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.ProcInput;

@Data
@EqualsAndHashCode(callSuper=true)
@Entity(name = "ProcInput")
@Table(name = "proc_input",schema = "iais_meta")
 public class ProcInputEntity extends AbstractDomainObject implements ProcInput {

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcInput
	@OneToMany(mappedBy="input")
	private List<StatProcInputEntity> statProcInputs;

}