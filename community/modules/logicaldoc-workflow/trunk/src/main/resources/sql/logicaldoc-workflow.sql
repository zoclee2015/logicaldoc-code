create table ld_workflowtemplate (ld_id bigint not null, ld_lastmodified timestamp not null, ld_deleted int not null, ld_name varchar(255) not null, ld_description varchar(255), ld_deployed int, ld_startstate varchar(40), primary key (ld_id));
create table ld_workflowhistory (ld_id bigint not null, ld_lastmodified timestamp not null, ld_deleted int not null, ld_date timestamp, ld_event varchar(255), ld_comment varchar(4000), ld_docid bigint, ld_userid bigint, ld_username varchar(255), ld_templateid bigint not null, ld_instanceid varchar(255), ld_sessionid varchar(255), ld_new int, ld_filename varchar(255), primary key (ld_id));

insert into ld_menu (ld_id,ld_lastmodified,ld_deleted,ld_text,ld_parentid,ld_sort,ld_icon,ld_type,ld_ref,ld_size)
values     (-10,CURRENT_TIMESTAMP,0,'workflow',2,4,'workflow.png',1,'workflow/manage-workflowtemplates',0);
insert into ld_menugroup(ld_menuid, ld_groupid, ld_write , ld_addchild, ld_managesecurity, ld_manageimmutability, ld_delete, ld_rename, ld_bulkimport, ld_bulkexport, ld_sign, ld_archive, ld_workflow)
values     (-10,1,1,1,1,1,1,1,1,1,1,1,1);

insert into ld_menu (ld_id,ld_lastmodified,ld_deleted,ld_text,ld_parentid,ld_sort,ld_icon,ld_type,ld_ref,ld_size)
values     (-11,CURRENT_TIMESTAMP,0,'mytasks',4,10,'workflow.png',1,'workflow/tasks',0);

insert into ld_menugroup(ld_menuid, ld_groupid, ld_write , ld_addchild, ld_managesecurity, ld_manageimmutability, ld_delete, ld_rename, ld_bulkimport, ld_bulkexport, ld_sign, ld_archive, ld_workflow)
values     (-11,1,1,1,1,1,1,1,1,1,1,1,1);
insert into ld_menugroup(ld_menuid, ld_groupid, ld_write , ld_addchild, ld_managesecurity, ld_manageimmutability, ld_delete, ld_rename, ld_bulkimport, ld_bulkexport, ld_sign, ld_archive, ld_workflow)
values     (-11,2,1,1,1,1,1,1,1,1,1,1,1);
insert into ld_menugroup(ld_menuid, ld_groupid, ld_write , ld_addchild, ld_managesecurity, ld_manageimmutability, ld_delete, ld_rename, ld_bulkimport, ld_bulkexport, ld_sign, ld_archive, ld_workflow)
values     (-11,3,1,1,1,1,1,1,1,1,1,1,1);
