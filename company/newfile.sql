if exists(select * from sysdatabases where name='company')
drop database company

create database company
on(
 name='company',
 filename='e:\company.mdf'
)
if exists(select * from sysobjects where name='USERS')
drop table USERS
--�û���
create table USERS
(
 userId int identity (1,1) primary key not null,--��ʶ��
 userName varchar(20) not null,--�û���
 password varchar(20) not null,--���룬����Ϊ��
 status int default 0 --�û����Ĭ��0
)	
if exists(select * from sysobjects where name='NEWS')
drop table NEWS
--���ű�
create table NEWS
(
  newId int identity (1,1) primary key not null,--��ʶ�У�����
  title varchar(100) not null,--���ű��⣬����Ϊ��
  [content] varchar(800) ,--��������
  writerDate varchar(30)  default getDate()--��������
)
select * from news
insert into  news  values('����W55�����Ϳ�','˵�������Wϵ����������Ŵ�Ҷ�����е�İ�����䲻��¹��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�еͶ˻���W55�Ƴ�1550Ԫ�´����۸񣬸���һ��512M�¼��������Ϊ��ֵ������Ȥ�¶��߿��Թ�עһ�¡�',default )
insert into  news  values('MP4�Ĺ�ע�ȵ���TOP10','˵��MP4�����Ŵ�Ҿͻ�ע�ȵ���TOP10���䲻��¹��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�еͶ˻���W55�Ƴ�1550Ԫ�´����۸񣬸���һ��512M�¼��������Ϊ��ֵ������Ȥ�¶��߿��Թ�עһ�¡�',default )
insert into  news  values('�����뾵ͷ���','�����뾵ͷ��ϣ����Ŵ�Ҷ�����е�İ�����䲻��¹��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�еͶ˻���W55�Ƴ�1550Ԫ�´����۸񣬸���һ��512M�¼��������Ϊ��ֵ������Ȥ�¶��߿��Թ�עһ�¡�',default )
insert into  news  values('���R5������ǧ','���R5������ǧ�����Ŵ�Ҷ�����е�İ�����䲻��¹��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�еͶ˻���W55�Ƴ�1550Ԫ�´����۸񣬸���һ��512M�¼��������Ϊ��ֵ������Ȥ�¶��߿��Թ�עһ�¡�',default )
insert into  news  values('�������Ʒ�Ƶ����','�������Ʒ�Ƶ���������Ŵ�Ҷ�����е�İ�����䲻��¹��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�еͶ˻���W55�Ƴ�1550Ԫ�´����۸񣬸���һ��512M�¼��������Ϊ��ֵ������Ȥ�¶��߿��Թ�עһ�¡�',default )
insert into  news  values('�����ڼ併�����͵�8�����','�����ڼ併�����͵�8����������Ŵ�Ҷ�����е�İ�����䲻��¹��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�еͶ˻���W55�Ƴ�1550Ԫ�´����۸񣬸���һ��512M�¼��������Ϊ��ֵ������Ȥ�¶��߿��Թ�עһ�¡�',default )
insert into  news  values('����Ů�Է���E428�л�ֻ1888','˵������Ů�Է���E428�л�ֻ1888�ˣ����Ŵ�Ҷ�����е�İ�����䲻��¹��ܱ������ʱ��ǰ����������ƣ�һ�������������Ͽɡ����գ����ߴ�����ר������Ϥ�����Wϵ�еͶ˻���W55�Ƴ�1550Ԫ�´����۸񣬸���һ��512M�¼��������Ϊ��ֵ������Ȥ�¶��߿��Թ�עһ�¡�',default )
--drop table news
--��Ʒ��
create table PRODUCT
(
  productId int identity (1,1) primary key not null,--��ʶ��
  serialNumber varchar(50) ,--��Ʒ���
  productName varchar(50) not null,--��Ʒ���ƣ�����Ϊ��
  brand varchar(30) ,--��ƷƷ��
  [model] varchar(50) ,--��Ʒ�ͺ�
  price money ,--��Ʒ�۸�
  picture varchar(30),--��ƷͼƬ
  description varchar(500)--��Ʒ����
)

insert into product values('����','�����ֻ�','����','E303','5000','image/d_r11_10_r1_c221.jpg','�ÿ�')
insert into product values('�´�','�������','�´�','A303','8000','image/d_r11_10_r1_c116.jpg','�ÿ�')
insert into product values('����','�����','����','B303','6000','image/d_r11_10_r1_c81.jpg','�ÿ�')
insert into product values('IBM','�ʼǱ�','IBM','H303','7000','image/d_r11_10_r1_c2.jpg','�ÿ�')
insert into product values('����','�ʼǱ�','����','C303','4000','image/d_r11_10_r1_c1.jpg','�ÿ�')
insert into product values('ŵ����','�ֻ�','ŵ����','W303','5000','image/d_r11_10_r1_c221.jpg','�ÿ�')
insert into product values('Ħ������','�ֻ�','Ħ������','V3','2000','image/d_r11_10_r1_c22.jpg','�ÿ�')
insert into product values('����','�ֻ�','����','H303','1000','image/d_r11_10_r1_c221.jpg','�ÿ�')
drop table messages
--���Ա�
create table MESSAGES
(
   id int identity (1,1) primary key not null, --��ʶ�У�����
   sendName varchar(20) not null,--������Ϣ�û���
   title varchar(50) ,--��Ϣ����
   [content] varchar(500) ,--��Ϣ����
   revertNum int default 0,--�ظ���Ϣ����
   sendDate varchar(30)  default getDate()--������������
)

--�ظ����Ա�
drop table REVERTS
create table REVERTS
(
  id int identity (1,1) primary key not null,--��ʶ�У�����
  messageId int not null,--����ID�����
  sendName varchar(20) not null,--�ظ���Ϣ�û���
  title varchar(50) ,--�ظ���Ϣ����
  [content] varchar(500) ,--�ظ���Ϣ����
  sendDate varchar(30)  default getDate()--�ظ���������
)

alter table REVERTS
ADD CONSTRAINT FK_MESSAGEID
foreign key (messageId) references MESSAGES (id)
dbcc checkiden(messages,reseed,1)
select * from messages