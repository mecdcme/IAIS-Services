package md.parstat.iais.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@NamedQuery(name="Output.findAll", query="SELECT o FROM Output o")
public class Output implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_output")
	private long idOutput;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcOutput
	@OneToMany(mappedBy="output")
	private List<StatProcOutput> statProcOutputs;

	 
}