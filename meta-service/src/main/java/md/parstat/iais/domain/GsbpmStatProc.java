package md.parstat.iais.domain;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;
import java.util.Date;
import java.util.List;


@Data
@Entity
@Table(name="gsbpm_stat_proc")
@NamedQuery(name="GsbpmStatProc.findAll", query="SELECT g FROM GsbpmStatProc g")
public class GsbpmStatProc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	@Column(name="description_en")
	private String descriptionEn;

	@Column(name="description_ro")
	private String descriptionRo;

	@Column(name="description_ru")
	private String descriptionRu;

	@Column(name="division_id")
	private Integer divisionId;

	@Column(name="end_date")
	private Date endDate;

	@Column(name="next_step")
	private Integer nextStep;

	@Column(name="order_code")
	private Short orderCode;

	@Column(name="previous_step")
	private Integer previousStep;
 
	@Column(name="start_date")
	private Date startDate;
 
	@Column(name="sys_date")
	private Date sysDate;

	//bi-directional many-to-one association to Gsbpm
	@ManyToOne
	@JoinColumn(name="id_gsbpm")
	private Gsbpm gsbpm;

	//bi-directional many-to-one association to StatisticalProcess
	@ManyToOne
	@JoinColumn(name="id_stat_proc")
	private StatisticalProcess statisticalProcess;

	//bi-directional many-to-one association to SysUser
	@ManyToOne
	@JoinColumn(name="sys_user")
	private SysUser sysUserBean;

	//bi-directional many-to-one association to StatProcInput
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatProcInput> statProcInputs;

	//bi-directional many-to-one association to StatProcOutput
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatProcOutput> statProcOutputs;

	//bi-directional many-to-one association to StatProcQualContr
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatProcQualContr> statProcQualContrs;

	//bi-directional many-to-one association to StatProcSoftware
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatProcSoftware> statProcSoftwares;

	//bi-directional many-to-one association to StatProcStandTask
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatProcStandTask> statProcStandTasks;

	//bi-directional many-to-one association to StatProcStandard
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatProcStandard> statProcStandards;

	//bi-directional many-to-one association to StatProcStatMeth
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatProcStatMeth> statProcStatMeths;

	//bi-directional many-to-one association to StatPocDocument
	@OneToMany(mappedBy="gsbpmStatProc")
	private List<StatPocDocument> statRpocDocuments;

	

}