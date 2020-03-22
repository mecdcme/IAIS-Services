package md.parstat.iais.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="sys_user")
@NamedQuery(name="SysUser.findAll", query="SELECT s FROM SysUser s")
public class SysUser implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private String username;

	@Column(name="app_lang")
	private String appLang;

	@Column(name="e_mail")
	private String eMail;

	@Temporal(TemporalType.DATE)
	@Column(name="end_date")
	private Date endDate;

	private String name;

	@Column(name="pass_change")
	private BigDecimal passChange;

	@Column(name="pass_hash")
	private String passHash;

	private String patronimic;

	private String phone;

	@Temporal(TemporalType.DATE)
	@Column(name="start_date")
	private Date startDate;

	private String surname;

	@Column(name="sys_admin")
	private BigDecimal sysAdmin;

	@Temporal(TemporalType.DATE)
	@Column(name="sys_date")
	private Date sysDate;

	//bi-directional many-to-one association to GsbpmStatProc
	@OneToMany(mappedBy="sysUserBean")
	private List<GsbpmStatProc> gsbpmStatProcs;

	//bi-directional many-to-one association to StatisticalProcess
	@OneToMany(mappedBy="sysUserBean")
	private List<StatisticalProcess> statisticalProcesses;

	//bi-directional many-to-one association to SysRole
	@ManyToOne
	@JoinColumn(name="role_code")
	private SysRole sysRole;

	
}