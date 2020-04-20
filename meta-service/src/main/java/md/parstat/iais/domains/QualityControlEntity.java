package md.parstat.iais.domains;

import java.util.List;

import javax.persistence.*;

import lombok.Data;
import lombok.EqualsAndHashCode;

import md.parstat.iais.domains.abstracts.AbstractDomainObject;
import md.parstat.iais.domains.interfaces.QualityControl;

@Data
@Entity(name="QualityControl")
@EqualsAndHashCode(callSuper=true)
@Table(name="quality_control",schema = "iais_meta") 
public class QualityControlEntity extends AbstractDomainObject implements QualityControl {


	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcQualContr
	@OneToMany(mappedBy="qualityControl")
	private List<StatProcQualContrEntity> statProcQualContrs;



}