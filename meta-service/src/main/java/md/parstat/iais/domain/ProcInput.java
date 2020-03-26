package md.parstat.iais.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name = "proc_input",schema = "iais_meta")
@NamedQuery(name="ProcInput.findAll", query="SELECT i FROM ProcInput i")
public class ProcInput implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_input")
	private Long idInput;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcInput
	@OneToMany(mappedBy="input")
	private List<StatProcInput> statProcInputs;

}