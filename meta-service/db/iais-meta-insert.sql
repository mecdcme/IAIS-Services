insert into iais_meta.law_type (id, type_en ) 
values 
	(1, 'European regulation'),
	(2, 'European decision'),
	(3, 'National law');

insert into iais_meta.division_status
values
	(0, 'Non active'),
	(1, 'Active');
	
insert into iais_meta.division (id , acronym_en , name_en, status_id )
values
	(1, 'industry', 'Industry and Energy Statistics Division', 1),
	(2, 'employment', 'Employment Statistics Division', 1);
	
insert into iais_meta.software (id, name_en )
values
	(1, 'CIS'),
	(2, 'CSPro'),
	(3, 'Survey Solutions'),
	(4, 'ODK');

insert into iais_meta.proc_input(id, name_en) 
values
	(1, 'Document'),
	(2, 'Questionnaire'),
	(3, 'List of units'),
	(4, 'Statistical classification');

insert into iais_meta.proc_output(id, name_en) 
values
	(1, 'Document'),
	(2, 'Questionnaire'),
	(3, 'List of units'),
	(4, 'Statistical classification');

insert into iais_meta.gsbpm (id, id_phase , number_phase, name_en, parent_phase, id_phase_vers) 
	values 
		(1,1,'1','Specify needs',NULL,'GSBPM 5.1'),
		(2,2,'2','Design',NULL,'GSBPM 5.1'),
		(3,3,'3','Build',NULL,'GSBPM 5.1'),
		(4,3,'4','Collect',NULL,'GSBPM 5.1'),
		(5,5,'5','Process',NULL,'GSBPM 5.1'),
		(6,6,'6','Analyse',NULL,'GSBPM 5.1'),
		(7,7,'7','Disseminate',NULL,'GSBPM 5.1'),
		(8,8,'8','Evaluate',NULL,'GSBPM 5.1'),
		(11,11,'1.1',' Identify needs',1,'GSBPM 5.1'),
		(12,12,'1.2',' Consult and confirm needs',1,'GSBPM 5.1'),
		(13,13,'1.3',' Establish output objectives',1,'GSBPM 5.1'),
		(14,14,'1.4',' Identify concepts',1,'GSBPM 5.1'),
		(15,15,'1.5',' Check data availability',1,'GSBPM 5.1'),
		(16,16,'1.6',' Prepare and submit business case',1,'GSBPM 5.1'),
		(21,21,'2.1',' Design outputs',2,'GSBPM 5.1'),
		(22,22,'2.2',' Design variable descriptions',2,'GSBPM 5.1'),
		(23,23,'2.3',' Design collection',2,'GSBPM 5.1'),
		(24,24,'2.4',' Design frame & sample',2,'GSBPM 5.1'),
		(25,25,'2.5',' Design processing & analysis',2,'GSBPM 5.1'),
		(26,26,'2.6',' Design production systems & workflow',2,'GSBPM 5.1'),
		(31,31,'3.1',' Reuse or build collection instruments',3,'GSBPM 5.1'),
		(32,32,'3.2',' Reuse or build processing and analysis components',3,'GSBPM 5.1'),
		(33,33,'3.3',' Reuse or build dissemination components',3,'GSBPM 5.1'),
		(34,34,'3.4',' Configure workflows',3,'GSBPM 5.1'),
		(35,35,'3.5',' Test production system',3,'GSBPM 5.1'),
		(36,36,'3.6',' Test statistical business process',3,'GSBPM 5.1'),
		(37,37,'3.7',' Finalise production system',3,'GSBPM 5.1'),
		(41,41,'4.1',' Create frame and select sample',4,'GSBPM 5.1'),
		(42,42,'4.2',' Set up collection',4,'GSBPM 5.1'),
		(43,43,'4.3',' Run collection',4,'GSBPM 5.1'),
		(44,44,'4.4',' Finalize collection',4,'GSBPM 5.1'),
		(51,51,'5.1',' Integrate data',5,'GSBPM 5.1'),
		(52,52,'5.2',' Classify & code',5,'GSBPM 5.1'),
		(53,53,'5.3',' Review & validate',5,'GSBPM 5.1'),
		(54,54,'5.4',' Edit & impute',5,'GSBPM 5.1'),
		(55,55,'5.5',' Derive new variables & units',5,'GSBPM 5.1'),
		(56,56,'5.6',' Calculate weights',5,'GSBPM 5.1'),
		(57,57,'5.7',' Calculate aggregates',5,'GSBPM 5.1'),
		(58,58,'5.8',' Finalise data files',5,'GSBPM 5.1'),
		(61,61,'6.1',' Prepare draft outputs',6,'GSBPM 5.1'),
		(62,62,'6.2',' Validate outputs',6,'GSBPM 5.1'),
		(63,63,'6.3',' Interpret & explain outputs',6,'GSBPM 5.1'),
		(64,64,'6.4',' Apply disclosure control',6,'GSBPM 5.1'),
		(65,65,'6.5',' Finalise outputs',6,'GSBPM 5.1'),
		(71,71,'7.1',' Update output systems',7,'GSBPM 5.1'),
		(72,72,'7.2','Produce dissemination products',7,'GSBPM 5.1'),
		(73,73,'7.3',' Manage release of dissemination products',7,'GSBPM 5.1'),
		(74,74,'7.4',' Promote dissemination products',7,'GSBPM 5.1'),
		(75,75,'7.5',' Manage user support',7,'GSBPM 5.1'),
		(81,81,'8.1',' Update output systems',8,'GSBPM 5.1'),
		(82,82,'8.2',' Produce dissemination products',8,'GSBPM 5.1'),
		(83,83,'8.3',' Manage release of dissemination products',8,'GSBPM 5.1');
	
/*==============================================================*/
/* Process: PRODMOLD                                            */
/*==============================================================*/

insert into iais_meta.law(id, id_law_type, law_number, title_en)
values
(1,3,'3924/91','REGULAMENTUL (CE) NR. 912/2004 AL COMISIEI din 29 aprilie 2004' );

insert into iais_meta.statistical_process (id, name_en, acronym_en, division_id, contact_user)
values
(1,'Industrial production statistics', 'PRODMOLD', 1, 123);
	
insert into iais_meta.stat_proc_law (id_stat_proc, id_law ) values (1,1);

insert into iais_meta.gsbpm_stat_proc (id, id_stat_proc, id_gsbpm, division_id, next_step, previous_step, description_en)
values
(1,1,11,1,null,2, 'Specificarea nevoilor de informaṭii. Pentru a asigura comparabilitatea datelor din industria naţională cu cele din statele membre UE a fost necesara trecerea la clasificatorul international PRODCOM. 
In 2001-2002 s-a elaborat proiectul Nomenclatorului PRODMOLD. In 2003 s-a produs testarea noului momenclator. Astfel incepand cu ianuarie 2004 pentru prima data s-a inceput colectarea datelor lunare conform noului clasificator, 
iar la data de 24.12.2004 Nomenclatorul PRODMOLD armonizat la PRODCOM-lista 2004 a fost aprobat la Colegiul BNS prin Hotărîrea nr. 9'),
(2,1,12,1,1,3, 'Consultarea cu utilizatorii de date statistice ṣi confirmarea nevoilor. Realizarea cercetarii pilot in 2003'),
(3,1,13,1,2,4, 'Stabilirea gradului de detaliere a rezultatelor. Colectarea datelor in  conformitate cu nomenclatorul PRODMOLD'),
(4,1,14,1,3,5, 'Identificarea  conceptelor statistice ṣi a clasificărilor'),
(5,1,15,1,4,6, 'Verificarea și analiza disponibilității datelor'),
(6,1,16,1,5,null, 'Planificarea procesului statistic. Elaborarea metodologiei');

insert into iais_meta.stat_proc_input (id, id_gsbpm_stat_proc, id_input) values (1,2,1);

insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (1,1,4);
insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (2,2,1);
insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (3,3,2);
insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (4,4,2);
insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (5,5,2);

/*==============================================================*/
/* Process: LFS                                                 */
/*==============================================================*/

insert into iais_meta.law(id, id_law_type, law_number, title_en)
values
(2,1,'577/98','Regulamentul (CE) NR. 577/98 al Consiliului din 9 martie 1998.'),
(3,1,'577/98','Regulamentului (CE) nr. 577/98 al Consiliului privind organizarea unei anchete prin sondaj asuupra forței de muncă din Comunitate'),
(4,3,'160','Legea pentru ratificarea Convenției Organizației Internaționale a Muncii nr.160 privind statistica muncii (nr. 186 din 29.09.2011)');

insert into iais_meta.statistical_process (id, name_en, acronym_en, division_id, contact_user)
values
(2,'Labour Force Survey', 'LFS', 2, 321);
	
insert into iais_meta.stat_proc_law (id_stat_proc, id_law ) values (2,2), (2,3), (2,4);

insert into iais_meta.gsbpm_stat_proc (id, id_stat_proc, id_gsbpm, division_id, next_step, previous_step, description_en)
values
(7,2,11,2,null,8, 'Revizuirea în 2019 a AFM a fost dictată de:
1. Necesitatea modificării definiției Ocupării în conformitate cu Rezoluția CISM-19.
2. Necesitatea elaborării unui nou cadru de eșantionare (eșantion nou și schemă nouă de rotație).
3. Utilizarea numărului populației cu reședință obișnuită la extinderea rezultatelor AFM.'),
(8,2,12,2,7,9, 'Vezi 1.1 Consultații / discuții pe intern (în cadrul BNS) 
și întruniri pe extern cu responsabilii de politicile de ocupare din țară (MSMPS)'),
(9,2,13,2,8,10, ''),
(10,2,14,2,9,11, ''),
(11,2,15,2,10,12, ''),
(12,2,16,2,11,null, '');

insert into iais_meta.stat_proc_input (id, id_gsbpm_stat_proc, id_input) values (2,7,1);
insert into iais_meta.stat_proc_input (id, id_gsbpm_stat_proc, id_input) values (3,8,1);
insert into iais_meta.stat_proc_input (id, id_gsbpm_stat_proc, id_input) values (4,9,1);
insert into iais_meta.stat_proc_input (id, id_gsbpm_stat_proc, id_input) values (5,10,1);

insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (6,7,1);
insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (7,8,1);
insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (8,9,1);
insert into iais_meta.stat_proc_output (id, id_gsbpm_stat_proc, id_output) values (9,10,1);
