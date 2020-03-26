package md.parstat.iais.domain;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

import java.util.List;


@Data
@Entity
@Table(name = "proc_document",schema = "iais_meta")
@NamedQuery(name="ProcDocument.findAll", query="SELECT d FROM ProcDocument d")
public class ProcDocument implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_document")
	private Long idDocument;

	@Column(name="doc_year")
	private Integer docYear;

	@Column(name="file_extentions")
	private String fileExtentions;

	@Column(name="file_name")
	private String fileName;

	@Column(name="file_path")
	private String filePath;

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

	//bi-directional many-to-one association to StatPocDocument
	@OneToMany(mappedBy="document")
	private List<StatPocDocument> statRpocDocuments;


}