if exists(select * from sysdatabases where name='company')
drop database company

create database company
on(
 name='company',
 filename='e:\company.mdf'
)
if exists(select * from sysobjects where name='USERS')
drop table USERS
--用户表
create table USERS
(
 userId int identity (1,1) primary key not null,--标识列
 userName varchar(20) not null,--用户名
 password varchar(20) not null,--密码，不能为空
 status int default 0 --用户身份默认0
)	
if exists(select * from sysobjects where name='NEWS')
drop table NEWS
--新闻表
create table NEWS
(
  newId int identity (1,1) primary key not null,--标识列，主键
  title varchar(100) not null,--新闻标题，不能为空
  [content] varchar(800) ,--新闻内容
  writerDate varchar(30)  default getDate()--发表日期
)
select * from news
insert into  news  values('索尼W55降价送卡','说起索尼德W系列相机，相信大家都不会感到陌生，其不错德功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系列低端机型W55推出1550元德促销价格，附送一张512M德记忆棒，颇为超值，感兴趣德读者可以关注一下。',default )
insert into  news  values('MP4的关注度到了TOP10','说起MP4，相信大家就会注度到了TOP10，其不错德功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系列低端机型W55推出1550元德促销价格，附送一张512M德记忆棒，颇为超值，感兴趣德读者可以关注一下。',default )
insert into  news  values('单反与镜头组合','单反与镜头组合，相信大家都不会感到陌生，其不错德功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系列低端机型W55推出1550元德促销价格，附送一张512M德记忆棒，颇为超值，感兴趣德读者可以关注一下。',default )
insert into  news  values('理光R5不到俩千','理光R5不到俩千，相信大家都不会感到陌生，其不错德功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系列低端机型W55推出1550元德促销价格，附送一张512M德记忆棒，颇为超值，感兴趣德读者可以关注一下。',default )
insert into  news  values('国庆各种品牌的相机','国庆各种品牌的相机，相信大家都不会感到陌生，其不错德功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系列低端机型W55推出1550元德促销价格，附送一张512M德记忆棒，颇为超值，感兴趣德读者可以关注一下。',default )
insert into  news  values('国庆期间降价最猛的8款相机','国庆期间降价最猛的8款相机，相信大家都不会感到陌生，其不错德功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系列低端机型W55推出1550元德促销价格，附送一张512M德记忆棒，颇为超值，感兴趣德读者可以关注一下。',default )
insert into  news  values('三星女性翻盖E428行货只1888','说起三星女性翻盖E428行货只1888了，相信大家都不会感到陌生，其不错德功能表现外加时尚前卫的外形设计，一度颇受消费者认可。今日，笔者从索尼专卖处获悉，其对W系列低端机型W55推出1550元德促销价格，附送一张512M德记忆棒，颇为超值，感兴趣德读者可以关注一下。',default )
--drop table news
--商品表
create table PRODUCT
(
  productId int identity (1,1) primary key not null,--标识列
  serialNumber varchar(50) ,--产品编号
  productName varchar(50) not null,--产品名称，不能为空
  brand varchar(30) ,--产品品牌
  [model] varchar(50) ,--产品型号
  price money ,--产品价格
  picture varchar(30),--产品图片
  description varchar(500)--产品介绍
)

insert into product values('索爱','索爱手机','索爱','E303','5000','image/d_r11_10_r1_c221.jpg','好看')
insert into product values('柯达','数码相机','柯达','A303','8000','image/d_r11_10_r1_c116.jpg','好看')
insert into product values('松下','摄像机','松下','B303','6000','image/d_r11_10_r1_c81.jpg','好看')
insert into product values('IBM','笔记本','IBM','H303','7000','image/d_r11_10_r1_c2.jpg','好看')
insert into product values('联想','笔记本','联想','C303','4000','image/d_r11_10_r1_c1.jpg','好看')
insert into product values('诺基亚','手机','诺基亚','W303','5000','image/d_r11_10_r1_c221.jpg','好看')
insert into product values('摩托罗拉','手机','摩托罗拉','V3','2000','image/d_r11_10_r1_c22.jpg','好看')
insert into product values('中兴','手机','中兴','H303','1000','image/d_r11_10_r1_c221.jpg','好看')
drop table messages
--留言表
create table MESSAGES
(
   id int identity (1,1) primary key not null, --标识列，主键
   sendName varchar(20) not null,--发送消息用户名
   title varchar(50) ,--消息标题
   [content] varchar(500) ,--消息内容
   revertNum int default 0,--回复消息次数
   sendDate varchar(30)  default getDate()--发送留言日期
)

--回复留言表
drop table REVERTS
create table REVERTS
(
  id int identity (1,1) primary key not null,--标识列，主键
  messageId int not null,--留言ID，外键
  sendName varchar(20) not null,--回复消息用户名
  title varchar(50) ,--回复消息标题
  [content] varchar(500) ,--回复消息内容
  sendDate varchar(30)  default getDate()--回复留言日期
)

alter table REVERTS
ADD CONSTRAINT FK_MESSAGEID
foreign key (messageId) references MESSAGES (id)
dbcc checkiden(messages,reseed,1)
select * from messages