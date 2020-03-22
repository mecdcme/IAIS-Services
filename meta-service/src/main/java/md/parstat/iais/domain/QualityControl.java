package md.parstat.iais.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="quality_control")
@NamedQuery(name="QualityControl.findAll", query="SELECT q FROM QualityControl q")
public class QualityControl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_qual_contr")
	private long idQualContr;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcQualContr
	@OneToMany(mappedBy="qualityControl")
	private List<StatProcQualContr> statProcQualContrs;



}