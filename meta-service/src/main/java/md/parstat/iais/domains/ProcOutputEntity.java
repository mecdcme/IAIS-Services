package md.parstat.iais.domains;
 
import java.util.List;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.ProcOutput;

@Data
@Entity(name = "ProcOutput")
@EqualsAndHashCode(callSuper=true)
@Table(name = "proc_output",schema = "iais_meta")
public class ProcOutputEntity extends AbstractDomainObject implements ProcOutput {

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcOutput
	@OneToMany(mappedBy="output")
	private List<StatProcOutputEntity> statProcOutputs;

	 
}