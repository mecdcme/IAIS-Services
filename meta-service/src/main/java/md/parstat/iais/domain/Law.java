package md.parstat.iais.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@NamedQuery(name="Law.findAll", query="SELECT l FROM Law l")
public class Law implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_law")
	private long idLaw;

	@Column(name="file_en")
	private String fileEn;

	@Column(name="file_name_en")
	private String fileNameEn;

	@Column(name="file_name_ro")
	private String fileNameRo;

	@Column(name="file_name_ru")
	private String fileNameRu;

	@Column(name="file_ro")
	private String fileRo;

	@Column(name="file_ru")
	private String fileRu;

	@Temporal(TemporalType.DATE)
	@Column(name="law_date")
	private Date lawDate;

	@Column(name="law_number")
	private String lawNumber;

	@Column(name="link_en")
	private String linkEn;

	@Column(name="link_ro")
	private String linkRo;

	@Column(name="link_ru")
	private String linkRu;

	@Column(name="title_en")
	private String titleEn;

	@Column(name="title_ro")
	private String titleRo;

	@Column(name="title_ru")
	private String titleRu;

	//bi-directional many-to-one association to LawType
	@ManyToOne
	@JoinColumn(name="id_law_type")
	private LawType lawType;

	//bi-directional many-to-many association to StatisticalProcess
	@ManyToMany(mappedBy="laws")
	private List<StatisticalProcess> statisticalProcesses;


}