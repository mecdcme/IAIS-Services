package md.parstat.iais.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="statistical_process")
@NamedQuery(name="StatisticalProcess.findAll", query="SELECT s FROM StatisticalProcess s")
public class StatisticalProcess implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_stat_proc")
	private long idStatProc;

	@Column(name="acronym_en")
	private String acronymEn;

	@Column(name="acronym_ro")
	private String acronymRo;

	@Column(name="acronym_ru")
	private String acronymRu;

	@Column(name="name_en")
	private String nameEn;

	@Column(name="name_ro")
	private String nameRo;

	@Column(name="name_ru")
	private String nameRu;

	@Column(name="resp_full_name")
	private String respFullName;

	@Column(name="resp_mail")
	private String respMail;

	@Column(name="resp_phone")
	private String respPhone;

	@Temporal(TemporalType.DATE)
	@Column(name="sys_date")
	private Date sysDate;

	//bi-directional many-to-one association to GsbpmStatProc
	@OneToMany(mappedBy="statisticalProcess")
	private List<GsbpmStatProc> gsbpmStatProcs;

	//bi-directional many-to-one association to Division
	@ManyToOne
	@JoinColumn(name="division_id")
	private Division division;

	//bi-directional many-to-many association to Law
	@ManyToMany
	@JoinTable(
		name="stat_proc_law"
		, joinColumns={
			@JoinColumn(name="id_stat_proc")
			}
		, inverseJoinColumns={
			@JoinColumn(name="id_law")
			}
		)
	private List<Law> laws;

	//bi-directional many-to-one association to SysUser
	@ManyToOne
	@JoinColumn(name="sys_user")
	private SysUser sysUserBean;

}