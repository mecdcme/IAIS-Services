package md.parstat.iais.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="standard_tasks")
@NamedQuery(name="StandardTask.findAll", query="SELECT s FROM StandardTask s")
public class StandardTask implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_standard_task")
	private Long idStandardTask;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	//bi-directional many-to-one association to StatProcStandTask
	@OneToMany(mappedBy="standardTask")
	private List<StatProcStandTask> statProcStandTasks;


}