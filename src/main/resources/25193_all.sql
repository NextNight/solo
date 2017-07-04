SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `b3_solo_archivedate`;
CREATE TABLE `b3_solo_archivedate` (
  `oId` varchar(255) NOT NULL,
  `archiveDateArticleCount` int(11) NOT NULL,
  `archiveDatePublishedArticleCount` int(11) NOT NULL,
  `archiveTime` bigint(20) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_archivedate`(`oId`,`archiveDateArticleCount`,`archiveDatePublishedArticleCount`,`archiveTime`) values
('1498230119994','16','14','1496246400000');
DROP TABLE IF EXISTS  `b3_solo_archivedate_article`;
CREATE TABLE `b3_solo_archivedate_article` (
  `oId` varchar(255) NOT NULL,
  `archiveDate_oId` varchar(255) NOT NULL,
  `article_oId` varchar(255) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_archivedate_article`(`oId`,`archiveDate_oId`,`article_oId`) values
('1498230120050','1498230119994','1498230119818'),
('1498234649215','1498230119994','1498234648708'),
('1498269909442','1498230119994','1498269909078'),
('1498269909723','1498230119994','1498269909514'),
('1498272377935','1498230119994','1498272377517'),
('1498285247737','1498230119994','1498285247458'),
('1498298057768','1498230119994','1498298057554'),
('1498300488624','1498230119994','1498300488413'),
('1498359380247','1498230119994','1498359380070'),
('1498374241069','1498230119994','1498374240953'),
('1498395265174','1498230119994','1498395264959'),
('1498395853075','1498230119994','1498395852962'),
('1498396060981','1498230119994','1498396060717'),
('1498452232041','1498230119994','1498452231714'),
('1498452735803','1498230119994','1498452735593'),
('1498829081557','1498230119994','1498829081295');
DROP TABLE IF EXISTS  `b3_solo_article`;
CREATE TABLE `b3_solo_article` (
  `oId` varchar(255) NOT NULL,
  `articleTitle` varchar(255) NOT NULL,
  `articleAbstract` text NOT NULL,
  `articleAbstractIcon` varchar(100) DEFAULT NULL,
  `articleTags` text NOT NULL,
  `articleAuthorName` varchar(255) NOT NULL,
  `articleAuthorEmail` varchar(255) NOT NULL,
  `articleCommentCount` int(11) NOT NULL,
  `articleViewCount` int(11) NOT NULL,
  `articleContent` mediumtext NOT NULL,
  `articlePermalink` varchar(255) NOT NULL,
  `articleHadBeenPublished` char(1) NOT NULL,
  `articleIsPublished` char(1) NOT NULL,
  `articlePutTop` char(1) NOT NULL,
  `articleCreateDate` datetime NOT NULL,
  `articleUpdateDate` datetime NOT NULL,
  `articleRandomDouble` double NOT NULL,
  `articleSignId` varchar(255) NOT NULL,
  `articleCommentable` char(1) NOT NULL,
  `articleViewPwd` varchar(100) NOT NULL,
  `articleEditorType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_article`(`oId`,`articleTitle`,`articleAbstract`,`articleAbstractIcon`,`articleTags`,`articleAuthorName`,`articleAuthorEmail`,`articleCommentCount`,`articleViewCount`,`articleContent`,`articlePermalink`,`articleHadBeenPublished`,`articleIsPublished`,`articlePutTop`,`articleCreateDate`,`articleUpdateDate`,`articleRandomDouble`,`articleSignId`,`articleCommentable`,`articleViewPwd`,`articleEditorType`) values
('1498230119818','世界，你好！','欢迎使用 [Solo](https://github.com/b3log/solo) 博客系统。这是系统自动生成的演示文章，编辑或者删除它，然后开始你的独立博客之旅！

另外，欢迎你加入[黑客与画家的社区](https://hacpai.com)，你可以使用博客账号直接登录！

Solo 博客系统是一个开源项目，如果你觉得它很赞，请到[项目首页](https://github.com/b3log/solo)给颗星鼓励一下 :heart:','http://hadoop.apache.org/images/hadoop-logo.jpg','Solo','Altas','1031329190@qq.com','1','8','欢迎使用 [Solo](https://github.com/b3log/solo) 博客系统。这是系统自动生成的演示文章，编辑或者删除它，然后开始你的独立博客之旅！

另外，欢迎你加入[黑客与画家的社区](https://hacpai.com)，你可以使用博客账号直接登录！

----

Solo 博客系统是一个开源项目，如果你觉得它很赞，请到[项目首页](https://github.com/b3log/solo)给颗星鼓励一下 :heart:','/hello-soloQQ','1','1','1','2017-06-23 23:01:59','2017-06-25 20:14:17',0.897715258313427,'1','1','','CodeMirror-Markdown'),
('1498234648708','30个免费网页图标字体以及使用方法','在网页设计中使用图标字体（icon font）是件挺有新意的事情，使用图标字体能我们带来了一定的方便，比如在移动设备、Retina屏幕效果展示、兼容IE6/7浏览器以及能任意将图标放大缩小等，这些都是很不错的。下面为大家简单介绍下利用icomoon来实现网页字体和分享**30个免费网页图标字','http://hadoop.apache.org/images/hadoop-logo.jpg','字体,网页,前端,icon-font','Altas','1031329190@qq.com','0','2','## 30个免费网页图标字体以及使用方法

2013-02-28 标签：[图标](http://sc.chinaz.com/tag_info/TuBiao.html)[图标字体](http://sc.chinaz.com/tag_info/TuBiaoZiTi.html)[网页图标](http://sc.chinaz.com/tag_info/WangYeTuBiao.html)

[](http://sc.chinaz.com/info/130228237055.htm#)[](http://sc.chinaz.com/info/130228237055.htm# "分享到QQ空间")[](http://sc.chinaz.com/info/130228237055.htm# "分享到新浪微博")[](http://sc.chinaz.com/info/130228237055.htm# "分享到腾讯微博")[](http://sc.chinaz.com/info/130228237055.htm# "分享到人人网")[](http://sc.chinaz.com/info/130228237055.htm# "分享到微信")

在网页设计中使用图标字体（icon font）是件挺有新意的事情，使用图标字体能我们带来了一定的方便，比如在移动设备、Retina屏幕效果展示、兼容IE6/7浏览器以及能任意将图标放大缩小等，这些都是很不错的。下面为大家简单介绍下利用icomoon来实现网页字体和分享**30个免费网页图标字体**。

![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381579.jpg)

流行的在线字体定制网站有[Fontello](http://fontello.com/)和[icomoon](http://icomoon.io/)，这两个在线工具都很不错的，内置的图标也非常的多，当然在我今天分享的文章中的图标字体更多更实用更好哦^.^ 接下来我主要讲讲icoMoon的字体定制方法：

打开[icoMoon APP](http://icomoon.io/app/)字体定制页面，然后你会看到几百个常用图标，这里不建议全选，选几个你需要的就可以了，然后点击底部的“Font”按钮 –> 点击“Download”即可下载字体。

![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381687.jpg)

### 字体使用

下载完字体后，把Demo文件里面的style.css文件内容复制至你的CSS文件上。

@font-face {
	font-family: \'shejidaren\';
	src:url(\'fonts/shejidaren.eot\');
	src:url(\'fonts/shejidaren.eot?#iefix\') format(\'embedded-opentype\'),
		url(\'fonts/shejidaren.woff\') format(\'woff\'),
		url(\'fonts/shejidaren.ttf\') format(\'truetype\'),
		url(\'fonts/shejidaren.svg#shejidaren\') format(\'svg\');
	font-weight: normal;
	font-style: normal;
}

...省略了啦

HTML代码，有两个调用方法，而且两个都很简单：

1.使用data-icon=”?”,这个是HTML5的属性哦~~

帮助

2.使用Class类

### 使用原创Icon方法

也许有些同学喜欢自己原创，当然也是可以滴，准备工具：Fontlab、Adobe Illustrator。

1\\. Fontlab:
直接在Fontlab上制作图标字体，完成后点击Fire(文件) –> Export(导出) –> EPS格式。

2\\. AI:
打开刚刚导出的EPS，另存为SVG格式。

3.iconMoon APP
在icoMoon APP页面点击import Icons按钮，支持多选，然后按上文的方法下载使用即可！

Tips: Fontlab和AI这两个工具的路径是可以相互复制的哦，所以我们用AI来制作ICON方便一些，制作完再复制到Fontlab上，需要注意的是在AI里面的路径画大一点再复制到Fontlab里，否则容易变形。

**让网页图标字体兼容IE6/7的浏览器**

下载的压缩包有一个lte-ie7.js文件，内嵌至网页内即可。

## 30个免费网页图标字体下载

接下来一起看看免费开源的图标字体，各种各样的像素图标，我想一定有你需要的。

### [Elusive Icons](http://aristeides.com/elusive-iconfont/index.html)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381760.jpg)](http://aristeides.com/elusive-iconfont/index.html)

**图标数量:** 271
**版权:** SIL – Open Font Licence

[查看&下载字体 →](http://aristeides.com/elusive-iconfont/index.html)

### [MFG Labs Web Icon Set](http://mfglabs.github.com/mfglabs-iconset/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381721.jpg)](http://mfglabs.github.com/mfglabs-iconset/)

**图标数量:** 120
**版权:** MIT Licence

[查看&下载字体 →](http://mfglabs.github.com/mfglabs-iconset/)

### [Font Awesome](http://fortawesome.github.com/Font-Awesome/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381882.jpg)](http://fortawesome.github.com/Font-Awesome/)

**图标数量:
版权:** SIL Open Font License

[查看&下载字体 →](http://fortawesome.github.com/Font-Awesome/)

### [Foundation Icons](http://www.zurb.com/playground/foundation-icons)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381936.jpg)](http://www.zurb.com/playground/foundation-icons)

**图标数量:** 140
**版权:** MIT Open Source License

[查看&下载字体 →](http://www.zurb.com/playground/foundation-icons)

### [Pictonic Icons](https://pictonic.co/free)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381954.jpg)](https://pictonic.co/free)

**图标数量:** 266
**版权:** Free for personal or commercial projects

[查看&下载字体 →](https://pictonic.co/free)

### [Batch Icons](http://adamwhitcroft.com/batch/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381831.jpg)](http://adamwhitcroft.com/batch/)

**图标数量:** 300+
**版权:** Free for personal or commercial projects

[查看&下载字体 →](http://adamwhitcroft.com/batch/)

### [IcoMoon Free Pack](http://icomoon.io/#preview-free)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381795.jpg)](http://icomoon.io/#preview-free)

**图标数量:** 450
**版权:** CC License 3.0

[查看&下载字体 →](http://icomoon.io/#preview-free)

### [Iconic Icon Set](http://somerandomdude.com/work/iconic/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381900.jpg)](http://somerandomdude.com/work/iconic/)

**图标数量:** 171
**版权:** Creative Commons Share Alike 3.0

[查看&下载字体 →](http://somerandomdude.com/work/iconic/)

### [Ligature Symbols](http://kudakurage.com/ligature_symbols/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381865.jpg)](http://kudakurage.com/ligature_symbols/)

**图标数量:** 250+
**版权:** SIL Open Font License

[查看&下载字体 →](http://kudakurage.com/ligature_symbols/)

### [Entypo](http://www.entypo.com/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381918.jpg)](http://www.entypo.com/)

**图标数量:** 250
**版权:** Creative Commons Share Alike 3.0

[查看&下载字体 →](http://www.entypo.com/)

### [OpenWeb Icons](http://pfefferle.github.com/openwebicons/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382060.jpg)](http://pfefferle.github.com/openwebicons/)

**图标数量:** 54
**版权:** SIL Open Font License (OFL)

[查看&下载字体 →](http://pfefferle.github.com/openwebicons/)

### [Sosa Icon Font](http://www.tenbytwenty.com/sosa.php)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382150.jpg)](http://www.tenbytwenty.com/sosa.php)

**图标数量:** 120
**版权:** Free for personal or commercial projects

[查看&下载字体 →](http://www.tenbytwenty.com/sosa.php)

### [Metro UI Web Font](http://metroui.org.ua/icons.php)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382042.jpg)](http://metroui.org.ua/icons.php)

**图标数量:** 333

[查看&下载字体 →](http://metroui.org.ua/icons.php)

### [One Div](http://one-div.com/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382171.jpg)](http://one-div.com/)

**图标数量:** 91

[查看&下载字体 →](http://one-div.com/)

### [Maki](http://mapbox.com/maki/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382114.jpg)](http://mapbox.com/maki/)

**图标数量:** 73
**版权:** BSD License

[Maki →](http://mapbox.com/maki/)

### [PW Drawn Icon Font](http://www.peax-webdesign.com/goodies/free-icons/icones-gratuites/icon-font.html)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382188.jpg)](http://www.peax-webdesign.com/goodies/free-icons/icones-gratuites/icon-font.html)

**图标数量:** 80+
**版权:** Free for personal or commercial use

[查看&下载字体 →](http://www.peax-webdesign.com/goodies/free-icons/icones-gratuites/icon-font.html)

### [Premium Pixels Mini Icons](http://www.premiumpixels.com/freebies/80-mini-icons-psd-icon-font/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382096.jpg)](http://www.premiumpixels.com/freebies/80-mini-icons-psd-icon-font/)

**图标数量:** 80
**版权:** Free for personal or commercial use

[查看&下载字体 →](http://www.premiumpixels.com/freebies/80-mini-icons-psd-icon-font/)

### [Fontelico Font](https://github.com/fontello/fontelico.font)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382132.jpg)](https://github.com/fontello/fontelico.font)

**图标数量:** 30
**版权:** Creative Commons Share Alike 3.0

[查看&下载字体 →](https://github.com/fontello/fontelico.font)

### [Typicons](http://typicons.com/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810381989.jpg)](http://typicons.com/)

**图标数量:** 88
**版权:** Free for personal or commercial use

[查看&下载字体 →](http://typicons.com/)

### [Modern Pictograms](http://thedesignoffice.org/project/modern-pictograms/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382077.jpg)](http://thedesignoffice.org/project/modern-pictograms/)

**图标数量**: 89
**版权:** Open Font License (OFL)

[查看&下载字体 →](http://thedesignoffice.org/project/modern-pictograms/)

### [A Free Icon Web Font](http://www.heydonworks.com/a-free-icon-web-font)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382007.jpg)](http://www.heydonworks.com/a-free-icon-web-font)

**图标数量**: 60
**版权:** SIL Open Font License (OFL)

[查看&下载字体 →](http://www.heydonworks.com/a-free-icon-web-font)

### [Modern Pictograms](http://www.fontsquirrel.com/fonts/modern-pictograms)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382365.jpg)](http://www.fontsquirrel.com/fonts/modern-pictograms)

**图标数量**: 92
**版权:** SIL Open Font License (OFL)

[查看&下载字体 →](http://www.fontsquirrel.com/fonts/modern-pictograms)

### [Symbol Signs](http://www.designworkplan.com/design/symbol-signs.htm)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382348.jpg)](http://www.designworkplan.com/design/symbol-signs.htm)

**图标数量**: 21

[查看&下载字体 →](http://www.designworkplan.com/design/symbol-signs.htm)

### [Web Symbols](http://www.fontsquirrel.com/fonts/web-symbols)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382258.jpg)](http://www.fontsquirrel.com/fonts/web-symbols)

**图标数量**: 78
**版权:** SIL Open Font License (OFL)

[查看&下载字体 →](http://www.fontsquirrel.com/fonts/web-symbols)

### [Dot Com Font](http://www.dafont.com/dotcom.font?fpp=50)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382330.jpg)](http://www.dafont.com/dotcom.font?fpp=50)

**图标数量**: 93
**版权:** Free for personal use

[查看&下载字体 →](http://www.dafont.com/dotcom.font?fpp=50)

### [Social Media Icons](http://fontfabric.com/social-media-icons-pack/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382312.jpg)](http://fontfabric.com/social-media-icons-pack/)

**图标数量:** 74
**版权:** Free for personal or commercial projects.

[查看&下载字体 →](http://fontfabric.com/social-media-icons-pack/)

### [Rondo – Social Icon Font](http://www.tajfa.com/projects/rondo/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382223.jpg)](http://www.tajfa.com/projects/rondo/)

**图标数量:** 40
**版权:** Creative Commons Attribution-ShareAlike 3.0

[查看&下载字体 →](http://www.tajfa.com/projects/rondo/)

### [JustVector Social Icons Font](http://blog.martianwabbit.com/post/4344642365/justvector-social-icons-font)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382277.jpg)](http://blog.martianwabbit.com/post/4344642365/justvector-social-icons-font)

**图标数量**: 30

[查看&下载字体 →](http://blog.martianwabbit.com/post/4344642365/justvector-social-icons-font)

### [Social Media Glyph Set](http://pixelb.in/multi-format-social-media-glyph-set-243/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382206.jpg)](http://pixelb.in/multi-format-social-media-glyph-set-243/)

**图标数量:** 30
**版权:** Free for personal or commercial projects

[查看&下载字体 →](http://pixelb.in/multi-format-social-media-glyph-set-243/)

### [Meteocons](http://www.alessioatzeni.com/meteocons/)

[![](http://img.sc.chinaz.com/upload/2013/02/28/2013022810382295.jpg)](http://www.alessioatzeni.com/meteocons/)

**图标数量:** 40
**版权:** Free for personal or commercial projects

[查看&下载字体 →](http://www.alessioatzeni.com/meteocons/)

图标整理自：[http://speckyboy.com/2013/02/20/free-icon-font-sets/](http://speckyboy.com/2013/02/20/free-icon-font-sets/)','/articles/2017/06/24/1498234648708.html','1','1','0','2017-06-24 00:17:28','2017-06-24 00:17:28',0.607755617275111,'1','1','','CodeMirror-Markdown'),
('1498269909078','High Performance Spark下载','如果你使用Apache [Spark](https://www.iteblog.com/archives/tag/spark/)解决了中等规模数据的问题，但是在海量数据使用[Spark](https://www.iteblog.com/archives/tag/spark/)的时候还是会遇到各种问题。High Performance [Spark](https://www.iteblog.com/archives/tag/spark/)将会向你展示如何使用Spark的高级功能，所以你可以超越新手级别。本书适合软件工程师、数据工程师、开发者以及Spark系统管理员的使用。本书全名High Performance Spark：Best Practices for Scaling and Optimizing Apache Spark，作者Holden Karau, Rachel Warren，由O\'Reilly于2017年05月出版，全书358页；[《[电子书]High Performance Spark下载》','http://hadoop.apache.org/images/hadoop-logo.jpg','高可用,SparkSQl,Spark','Altas','1031329190@qq.com','0','2','如果你使用Apache [Spark](https://www.iteblog.com/archives/tag/spark/)解决了中等规模数据的问题，但是在海量数据使用[Spark](https://www.iteblog.com/archives/tag/spark/)的时候还是会遇到各种问题。High Performance [Spark](https://www.iteblog.com/archives/tag/spark/)将会向你展示如何使用Spark的高级功能，所以你可以超越新手级别。本书适合软件工程师、数据工程师、开发者以及Spark系统管理员的使用。本书全名High Performance Spark：Best Practices for Scaling and Optimizing Apache Spark，作者Holden Karau, Rachel Warren，由O\'Reilly于2017年05月出版，全书358页；[《[电子书]High Performance Spark下载》](https://www.iteblog.com/archives/1900.html)文章提供的是本书预览版，只提供前四章，共91页，_本文提供了本书的完整版_。通过本书你可以学到：

*   了解如何使Spark作业运行速度更快；
*   使用Spark探索数据；
*   使用Spark处理更大的数据集；
*   减少管道运行时间以获得更快的洞察力。

[![](https://www.iteblog.com/pic/books/High_Performance_Spark_iteblog.jpg)](https://www.iteblog.com/pic/books/High_Performance_Spark_iteblog.jpg)
如果想及时了解Spark、Hadoop或者Hbase相关的文章，欢迎关注微信公共帐号：**iteblog_hadoop**

## 本书的章节

| 

`Chapter 1 Introduction to High Performance Spark`

`Chapter 2 How Spark Works`

`Chapter 3 DataFrames, Datasets & Spark SQL`

`Chapter 4 Joins (SQL & Core)`

`Chapter 5 Effective Transformations`

`Chapter 6 Working with Key``/Value` `Data`

`Chapter 7 Going Beyond Scala`

`Chapter 8 Testing & Validation`

`Chapter 9 Spark Components and Packages`

`Append ix Spark Tuning and Cluster Sizing`

 |

## 下载地址

提供了PDF、azw3 以及 epub 三种格式的下载。','/articles/2017/06/24/1498269909078.html','1','1','0','2017-06-24 10:05:09','2017-06-24 10:05:09',0.511072957454924,'1','1','','CodeMirror-Markdown'),
('1498269909514','High Performance Spark下载','如果你使用Apache [Spark](https://www.iteblog.com/archives/tag/spark/)解决了中等规模数据的问题，但是在海量数据使用[Spark](https://www.iteblog.com/archives/tag/spark/)的时候还是会遇到各种问题。High Performance [Spark](https://www.iteblog.com/archives/tag/spark/)将会向你展示如何使用Spark的高级功能，所以你可以超越新手级别。本书适合软件工程师、数据工程师、开发者以及Spark系统管理员的使用。本书全名High Performance Spark：Best Practices for Scaling and Optimizing Apache Spark，作者Holden Karau, Rachel Warren，由O\'Reilly于2017年05月出版，全书358页；[《[电子书]High Performance Spark下载》','http://hadoop.apache.org/images/hadoop-logo.jpg','高可用,SparkSQl,Spark','Altas','1031329190@qq.com','0','0','如果你使用Apache [Spark](https://www.iteblog.com/archives/tag/spark/)解决了中等规模数据的问题，但是在海量数据使用[Spark](https://www.iteblog.com/archives/tag/spark/)的时候还是会遇到各种问题。High Performance [Spark](https://www.iteblog.com/archives/tag/spark/)将会向你展示如何使用Spark的高级功能，所以你可以超越新手级别。本书适合软件工程师、数据工程师、开发者以及Spark系统管理员的使用。本书全名High Performance Spark：Best Practices for Scaling and Optimizing Apache Spark，作者Holden Karau, Rachel Warren，由O\'Reilly于2017年05月出版，全书358页；[《[电子书]High Performance Spark下载》](https://www.iteblog.com/archives/1900.html)文章提供的是本书预览版，只提供前四章，共91页，_本文提供了本书的完整版_。通过本书你可以学到：

*   了解如何使Spark作业运行速度更快；
*   使用Spark探索数据；
*   使用Spark处理更大的数据集；
*   减少管道运行时间以获得更快的洞察力。

[![](https://www.iteblog.com/pic/books/High_Performance_Spark_iteblog.jpg)](https://www.iteblog.com/pic/books/High_Performance_Spark_iteblog.jpg)
如果想及时了解Spark、Hadoop或者Hbase相关的文章，欢迎关注微信公共帐号：**iteblog_hadoop**

## 本书的章节

| 

`Chapter 1 Introduction to High Performance Spark`

`Chapter 2 How Spark Works`

`Chapter 3 DataFrames, Datasets & Spark SQL`

`Chapter 4 Joins (SQL & Core)`

`Chapter 5 Effective Transformations`

`Chapter 6 Working with Key``/Value` `Data`

`Chapter 7 Going Beyond Scala`

`Chapter 8 Testing & Validation`

`Chapter 9 Spark Components and Packages`

`Append ix Spark Tuning and Cluster Sizing`

 |

## 下载地址

提供了PDF、azw3 以及 epub 三种格式的下载。','/articles/2017/06/24/1498269909514.html','0','0','0','2017-06-24 10:05:09','2017-06-24 10:05:09',0.301971488814368,'1','1','','CodeMirror-Markdown'),
('1498272377517',' [Apache Flink 1.3.0正式发布及其新功能介绍]','2017年06月01日儿童节 Apache [Flink](https://www.iteblog.com/archives/tag/flink/) 社区正式发布了 1.3.0 版本。此版本经历了四个月的开发，共解决了680个issues。Apache [Flink](https://www.iteblog.com/archives/tag/flink/) 1.3.0 是 1.x.y 版本线上的第四个主要版本，其 API 和其他 1.x.y 使用 @Public 注释的API是兼容的。

此外，Apache [Flink](https://www.iteblog.com/archives/tag/flink/) 社区目前制定了每四月发行一个主要版本（Apache Flink 1.2.0 是2017-02发行的，和 1.3.0正好隔了四个月），所以我们可以预期 Apache Flink 1.4.0 大约会在十月份发布。','http://spark.apache.org/images/spark-logo-trademark.png','Flink,Spark,SparkSQl,icon-font,前端,字体','Altas','1031329190@qq.com','2','5','# [Apache Flink 1.3.0正式发布及其新功能介绍](https://www.iteblog.com/archives/2164.html)

[ Flink](https://www.iteblog.com/archives/category/flink/)  2017-06-02 430  [1评论](https://www.iteblog.com/archives/2164.html#comments) [下载为PDF](https://www.iteblog.com/pdf/2164.pdf)    [为什么不允许复制](https://www.iteblog.com/why_not_allow_copy)

[![](https://www.iteblog.com/wy/hadoop.jpg)](https://www.iteblog.com/redirect.php?url=aHR0cDovL3Byby5iYWRvdXh1ZXl1YW4uY24vaXRlYmxvZy8=&article=true)

**下面文档是今天早上翻译的，因为要上班，时间比较仓促，有些部分没有翻译，请见谅。**

2017年06月01日儿童节 Apache [Flink](https://www.iteblog.com/archives/tag/flink/) 社区正式发布了 1.3.0 版本。此版本经历了四个月的开发，共解决了680个issues。Apache [Flink](https://www.iteblog.com/archives/tag/flink/) 1.3.0 是 1.x.y 版本线上的第四个主要版本，其 API 和其他 1.x.y 使用 @Public 注释的API是兼容的。

此外，Apache [Flink](https://www.iteblog.com/archives/tag/flink/) 社区目前制定了每四月发行一个主要版本（Apache Flink 1.2.0 是2017-02发行的，和 1.3.0正好隔了四个月），所以我们可以预期 Apache Flink 1.4.0 大约会在十月份发布。

主要的更新如下

文章目录

*   [1 Large State Handling/Recovery](https://www.iteblog.com/archives/2164.html#Large_State_HandlingRecovery)
*   [2 DataStream API](https://www.iteblog.com/archives/2164.html#DataStream_API)
*   [3 Deployment and Tooling](https://www.iteblog.com/archives/2164.html#Deployment_and_Tooling)
*   [4 Table API / SQL](https://www.iteblog.com/archives/2164.html#Table_API_SQL)
*   [5 Connectors](https://www.iteblog.com/archives/2164.html#Connectors)
*   [6 CEP Library](https://www.iteblog.com/archives/2164.html#CEP_Library)
*   [7 Gelly Library](https://www.iteblog.com/archives/2164.html#Gelly_Library)
*   [8 Known Issues](https://www.iteblog.com/archives/2164.html#Known_Issues)

## Large State Handling/Recovery

*   **RocksDB的增量检查点（Incremental Checkpointing for RocksDB）**：现在支持仅保存与上一次成功checkpoint之后新增的数据，而不是保存所有的应用程序状态。这将会加快checkpoint的时间，并且会相应地减少磁盘空间的消耗，因为每个checkpoint的大小会更小。详情请参见FLINK-5053。
*   **基于堆状态后端的异步快照（Asynchronous snapshotting）**：现在文件后端和内存后端（backends）使用写时复制HashMap的实现，使得其支持异步快照。异步快照使得Flink堆缓慢的存储系统和昂贵的序列化具有更大的弹性。详情请参见FLINK-6048, FLINK-5715。
*   **允许升级状态的Serializer**：现在我们可以保存应用程序状态的前提下升级状态的Serializer。
*   **以算子的粒度恢复作业状态**：在Apache Flink 1.3.0之前，算子的状态是绑定在task内部的，这使得很难在保持作业状态的同时改变job的拓扑。而现在我们可以做很多关于拓扑的修改。详情参见FLINK-5892。
*   **细粒度恢复（beta）**：在task出现故障的时候，我们可以仅仅重启那些受影响的subgraph，而不需要重启整个ExecutionGraph，这将大大减少恢复时间，详情参见FLINK-4256。

如果想及时了解Spark、[Hadoop](https://www.iteblog.com/archives/tag/hadoop/)或者Hbase相关的文章，欢迎关注微信公共帐号：**iteblog_hadoop**

## DataStream API

*   **Side Outputs**：这个功能使得一个算子可以有多个output stream。算子的元数据、内部系统信息（调试，性能等）或者是拒绝\\延迟的数据将会是这个功能的潜在用例。Window算子现在使用这个功能来处理延迟的数据。参见FLINK-4460。
*   **Union Operator State**：Flink 1.2.0引入了广播状态功能（broadcast state functionality），但是这个功能并没有对外开放。Flink 1.3.0 提供了Union Operator State API来对外开放广播状态功能。详情参见FLINK-5991。
*   **针对每个窗口的状态**：在此之前，WindowFunction或ProcessWindowFunction可以访问的状态被限定到窗口的key，而不是窗口本身。有了这个新功能，用户可以保持窗口状态并且与key无关。参见FLINK-5929。

## Deployment and Tooling

*   **Flink历史服务器**：Flink的HistoryServer现在允许您查询JobManager归档的已完成作业的状态和统计信息，详情参见FLINK-1579。
*   **在WEB前端监控Watermark**：为了更容易地诊断watermark相关问题，Flink JobManager前端现在提供了一个新的选项卡来跟踪每个算子的watermark。详情参见FLINK-3427。
*   **Datadog HTTP Metrics Reporter:** Datadog是使用非常广泛的指标系统。Flink现在提供了一个Datadog reporter，直接与Datadog http端点联系。详情参见FLINK-6013。
*   **网络缓存配置**：我们终于摆脱了繁琐的网络缓冲区配置，并用更通用的方法替代了它。现在我们使用可用JVM 内存的部分（默认是10%），而不是定义绝对数量的网络缓冲区。

## Table API / SQL

*   **Support for Retractions in Table API / SQL**: As part of our endeavor to support continuous queries on [Dynamic Tables](https://www.iteblog.com/redirect.php?url=aHR0cDovL2ZsaW5rLmFwYWNoZS5vcmcvbmV3cy8yMDE3LzA0LzA0L2R5bmFtaWMtdGFibGVzLmh0bWw=&article=true), Retraction is an important building block that will enable a whole range of new applications which require updating previously-emitted results. Examples for such use cases are computation of early results for long-running windows, updates due to late arriving data, or maintaining constantly changing results similar to materialized views in relational database systems. Flink 1.3.0 supports retraction for non-windowed aggregates. Results with updates can be either converted into a DataStream or materialized to external data stores using TableSinks with upsert or retraction support.

*   **Table API / SQL支持更多的聚合**: Flink 1.3.0中Table API 和 SQL 支持更多类型的聚合, 包括
    *   Batch 和 Streaming SQL 都支持GROUP BY window聚合操作(通过window函数[TUMBLE, HOP, and SESSION windows](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy02MDEx&article=true)
    *   SQL OVER window aggregations (only for streaming)
    *   Non-windowed aggregations (in streaming with retractions).
    *   用户自定义的聚合函数
*   **支持外部的catalog**: Table API 和 SQL 允许注册外部的catalogs. Table API 和 SQL 可以通过外部的catalogs 查询表及其模式相关的信息，而不需要对使用的表一一注册。

目前Table API / SQL的文档被重写了，预计会在06月05日发布。

## Connectors

*   **支持ElasticSearch 5.x**: ElasticSearch connectors相关的代码被重构，新的代码结构更加清晰，所有与ElasticSearch相关的公用模块被放到common base里面，与ElasticSearch版本相关的代码分别放到不同的模块中，这与Kafka的代码结构类似。 详情请参见FLINK-4988。

*   **Allow rescaling the Kinesis Consumer**: Flink 1.2.0 introduced rescalable state for DataStream programs. With Flink 1.3, the Kinesis Consumer also makes use of that engine feature ([FLINK-4821](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy00ODIx&article=true)).

*   **Transparent shard discovery for Kinesis Consumer**: The Kinesis consumer can now discover new shards without failing / restarting jobs when a resharding is happening ([FLINK-4577](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy00NTc3&article=true)).

*   **Allow setting custom start positions for the Kafka consumer**: With this change, you can instruct Flink’s Kafka consumer to start reading messages from a specific offset ([FLINK-3123](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy0zMTIz&article=true)) or earliest / latest offset ([FLINK-4280](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy00Mjgw&article=true)) without respecting committed offsets in Kafka.

*   **Allow out-opt from offset committing for the Kafka consumer**: By default, Kafka commits the offsets to the Kafka broker once a checkpoint has been completed. This change allows users to disable this mechanism ([FLINK-3398](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy0zMzk4&article=true)).

## CEP Library

The CEP library has been greatly enhanced and is now able to accommodate more use-cases out-of-the-box (expressivity enhancements), make more efficient use of the available resources, adjust to changing runtime conditions–all without breaking backwards compatibility of operator state.

Please note that the API of the CEP library has been updated with this release.

Below are some of the main features of the revamped CEP library:

*   **Make CEP operators rescalable**: Flink 1.2.0 introduced rescalable state for DataStream programs. With Flink 1.3, the CEP library also makes use of that engine feature ([FLINK-5420](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy01NDIw&article=true)).

*   **CEP library新引入的算子**:

    *   模式API的量词（*，+，？） ([FLINK-3318](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy0zMzE4&article=true))

    *   支持不同的连续性（continuity）需求 ([FLINK-6208](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy02MjA4&article=true))

    *   支持迭代条件 ([FLINK-6197](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy02MTk3&article=true))

## Gelly Library

*   Unified driver for running Gelly examples [FLINK-4949](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy00OTQ5&article=true)).
*   PageRank algorithm for directed graphs ([FLINK-4896](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy00ODk2&article=true)).
*   Add Circulant and Echo graph generators ([FLINK-6393](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy02Mzkz&article=true)).

## Known Issues

There are two **known issues** in Flink 1.3.0\\. Both will be addressed in the _1.3.1_ release.

*   [FLINK-6783](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy02Nzgz&article=true): Wrongly extracted TypeInformations for `WindowedStream::aggregate`
*   [FLINK-6783](https://www.iteblog.com/redirect.php?url=aHR0cHM6Ly9pc3N1ZXMuYXBhY2hlLm9yZy9qaXJhL2Jyb3dzZS9GTElOSy02Nzc1&article=true): StateDescriptor cannot be shared by multiple subtasks','/articles/2017/06/24/1498272377517.html','1','1','0','2017-06-24 10:46:17','2017-06-24 17:26:02',0.81683919824714,'1','1','','CodeMirror-Markdown'),
('1498285247458','Java8lambda表达式详解','ambda表达式（也称为闭包）是整个Java 8发行版中最受期待的在Java语言层面上的改变，Lambda允许把函数作为一个方法的参数（函数作为参数传递进方法中），或者把代码看成数据：函数式程序员对这一概念非常熟悉。在JVM平台上的很多语言（Groovy，[Scala](http://www.javacodegeeks.com/tutorials/scala-tutorials/)，……）从一开始就有Lambda，但是Java程序员不得不使用毫无新意的匿名类来代替lambda。','http://os36ky6gs.bkt.clouddn.com/921b8a9035ca445098cb12172bdcac40.jpg','java,java8','Altas','1031329190@qq.com','1','7','### 1.介绍

毫无疑问，[Java 8发行版](http://www.oracle.com/technetwork/java/javase/8train-relnotes-latest-2153846.html)是自Java 5（发行于2004，已经过了相当一段时间了）以来最具革命性的版本。Java 8 为Java语言、编译器、类库、开发工具与JVM（Java虚拟机）带来了大量新特性。在这篇教程中，我们将一一探索这些变化，并用真实的例子说明它们适用的场景。

这篇教程由以下几部分组成，它们分别涉及到Java平台某一特定方面的内容：

*   Java语言
*   编译器
*   类库
*   工具
*   Java运行时（JVM）

### 2.Java语言的新特性

不管怎么说，Java 8都是一个变化巨大的版本。你可能认为Java 8耗费了大量的时间才得以完成是为了实现了每个Java程序员所期待的特性。在这个小节里，我们将会涉及到这些特性的大部分。

#### 2.1 Lambda表达式与Functional接口

Lambda表达式（也称为闭包）是整个Java 8发行版中最受期待的在Java语言层面上的改变，Lambda允许把函数作为一个方法的参数（函数作为参数传递进方法中），或者把代码看成数据：函数式程序员对这一概念非常熟悉。在JVM平台上的很多语言（Groovy，[Scala](http://www.javacodegeeks.com/tutorials/scala-tutorials/)，……）从一开始就有Lambda，但是Java程序员不得不使用毫无新意的匿名类来代替lambda。

关于Lambda设计的讨论占用了大量的时间与社区的努力。可喜的是，最终找到了一个平衡点，使得可以使用一种即简洁又紧凑的新方式来构造Lambdas。在最简单的形式中，一个lambda可以由用逗号分隔的参数列表、–>符号与函数体三部分表示。例如：
	 
	 /**
	 * MetaWeblog requests processing. * * @param request the specified http servlet request
	 * @param response the specified http servlet response
	 * @param context the specified http request context
	 */@RequestProcessing(value = "/apis/metaweblog", method = HTTPRequestMethod.POST)
	public void metaWeblog(final HttpServletRequest request, final HttpServletResponse response, final HTTPRequestContext context) {
    final TextXMLRenderer renderer = new TextXMLRenderer();
    context.setRenderer(renderer);

    String responseContent = null;

    try {
        final ServletInputStream inputStream = request.getInputStream();
        final String xml = IOUtils.toString(inputStream, "UTF-8");
        final JSONObject requestJSONObject = XML.toJSONObject(xml);

        final JSONObject methodCall = requestJSONObject.getJSONObject(METHOD_CALL);
        final String methodName = methodCall.getString(METHOD_NAME);

        LOGGER.log(Level.INFO, "MetaWeblog[methodName={0}]", methodName);

        final JSONArray params = methodCall.getJSONObject("params").getJSONArray("param");

        if (METHOD_DELETE_POST.equals(methodName)) {
            params.remove(0); // Removes the first argument "appkey"
	    }

        final String userEmail = params.getJSONObject(INDEX_USER_EMAIL).getJSONObject("value").getString("string");
        final JSONObject user = userQueryService.getUserByEmail(userEmail);

        if (null == user) {
            throw new Exception("No user[email=" + userEmail + "]");
        }

        final String userPwd = params.getJSONObject(INDEX_USER_PWD).getJSONObject("value").getString("string");

        if (!user.getString(User.USER_PASSWORD).equals(MD5.hash(userPwd))) {
            throw new Exception("Wrong password");
        }

        if (METHOD_GET_USERS_BLOGS.equals(methodName)) {
            responseContent = getUsersBlogs();
        } else if (METHOD_GET_CATEGORIES.equals(methodName)) {
            responseContent = getCategories();
        } else if (METHOD_GET_RECENT_POSTS.equals(methodName)) {
            final int numOfPosts = params.getJSONObject(INDEX_NUM_OF_POSTS).getJSONObject("value").getInt("int");

            responseContent = getRecentPosts(numOfPosts);
        } else if (METHOD_NEW_POST.equals(methodName)) {
            final JSONObject article = parsetPost(methodCall);

            article.put(Article.ARTICLE_AUTHOR_EMAIL, userEmail);
            addArticle(article);

            final StringBuilder stringBuilder = new StringBuilder("\\"1.0\\" encoding=\\"UTF-8\\"?>").append("").append(article.getString(Keys.OBJECT_ID)).append(
                    "");

            responseContent = stringBuilder.toString();
        } else if (METHOD_GET_POST.equals(methodName)) {
            final String postId = params.getJSONObject(INDEX_POST_ID).getJSONObject("value").getString("string");

            responseContent = getPost(postId);
        } else if (METHOD_EDIT_POST.equals(methodName)) {
            final JSONObject article = parsetPost(methodCall);
            final String postId = params.getJSONObject(INDEX_POST_ID).getJSONObject("value").getString("string");

            article.put(Keys.OBJECT_ID, postId);

            article.put(Article.ARTICLE_AUTHOR_EMAIL, userEmail);
            final JSONObject updateArticleRequest = new JSONObject();

            updateArticleRequest.put(Article.ARTICLE, article);
            articleMgmtService.updateArticle(updateArticleRequest);

            final StringBuilder stringBuilder = new StringBuilder("\\"1.0\\" encoding=\\"UTF-8\\"?>").append("").append(postId).append(
                    "");

            responseContent = stringBuilder.toString();
        } else if (METHOD_DELETE_POST.equals(methodName)) {
            final String postId = params.getJSONObject(INDEX_POST_ID).getJSONObject("value").getString("string");

            articleMgmtService.removeArticle(postId);

            final StringBuilder stringBuilder = new StringBuilder("\\"1.0\\" encoding=\\"UTF-8\\"?>").append("").append(true).append(
                    "");

            responseContent = stringBuilder.toString();
        } else {
            throw new UnsupportedOperationException("Unsupported method[name=" + methodName + "]");
        }
    } catch (final Exception e) {
        LOGGER.log(Level.ERROR, e.getMessage(), e);

        final StringBuilder stringBuilder = new StringBuilder("\\"1.0\\" encoding=\\"UTF-8\\"?>").append("").append("faultCode500").append("faultString").append(e.getMessage()).append(
                "");

        responseContent = stringBuilder.toString();
    }

    renderer.setContent(responseContent);
	}','/articles/2017/06/24/1498285247458.html','1','1','0','2017-06-24 14:20:47','2017-06-26 12:47:51',0.910648312917961,'1','1','','CodeMirror-Markdown'),
('1498298057554','Icon图标的方法（css Sprite和@font face），重点icomoon的讲解使用。','使用icomoon的好处是后期维护方便，缩放不影响大小，方便灵活（不必过于依赖美工）。同时，它的兼容性也可以解决（font+html 可以兼容IE6，font+css兼容IE7以上）。将是以后ICON图标的发展趋势。
使用Css Sprite图的好处想必大家都知道了（实在不知道可以度娘），缺点在于制作时注意点较多：图标的固定大小及之间的距离，后期维护不方便；但很显然的是，目前为止我们还是使用这个方法较多。','http://hadoop.apache.org/images/hadoop-logo.jpg','字体,网页,前端','Altas','1031329190@qq.com','0','2','# Icon图标的方法（css Sprite和@font face），重点icomoon的讲解使用。

[![](http://www.qdfuns.com/uc_server/avatar.php?uid=17462&size=small)](http://www.qdfuns.com/house/17462.html)

[疯狂的石头之祺](http://www.qdfuns.com/house/17462.html) 发布于 2016-03-01 09:56:28 _浏览：_1828 _类型：_[原创](http://www.qdfuns.com/notes/id/all:original:all:all.html) - [随笔](http://www.qdfuns.com/notes/id/all:all:b415fdeb2a2577cf642bb78c4672419f:all.html) _分类：_[HTML/CSS](http://www.qdfuns.com/notes/id/all:all:all:3b96c34ac01a6a2316d4c602076232d8.html) - [前端细节](http://www.qdfuns.com/house/17462/note/class/id/a7860121759da1c7541241a1a7ec33bb.html) _二维码：_ __作者原创_ _版权保护__

1.css Sprite的使用（略……）

2.IcoMoon 在此之前，先看一些前辈写的非常好的教程文章：
教程1\\. http://sc.chinaz.com/info/130228237055.htm
教程2\\. http://www.zhangxinxu.com/wordpress/2012/06/free-icon-font-usage-icomoon/
教程3（免费程序IcoMoon:把矢量图转换成Web字体） http://www.alixixi.com/web/a/2013052488873.shtml

总结一下：
使用icomoon的好处是后期维护方便，缩放不影响大小，方便灵活（不必过于依赖美工）。同时，它的兼容性也可以解决（font+html 可以兼容IE6，font+css兼容IE7以上）。将是以后ICON图标的发展趋势。
使用Css Sprite图的好处想必大家都知道了（实在不知道可以度娘），缺点在于制作时注意点较多：图标的固定大小及之间的距离，后期维护不方便；但很显然的是，目前为止我们还是使用这个方法较多。
这两种方法都各有所长，所谓技术没有好坏，只有适合不适合，所以要使用哪种方案关键还是看具体项目，做到具体情况具体分析，方为上策。','/articles/2017/06/24/1498298057554.html','1','1','0','2017-06-24 17:54:17','2017-06-24 17:54:17',0.790394963145098,'1','1','','CodeMirror-Markdown'),
('1498300488413','资源下载测试','有的朋友可能会争论说，我正常的情况下不会出现这种情况，因为使用这个 API 的前提就是先创建好父节点，而后创建本节点，那我就不用抛出两种异常了，使用者也轻松了许多。但事实真的如此吗？我们想当然的认为了使用者是`自己人`，他们会乖乖的按照我们的想法去先创建父节点，再创建本节点，如果是在一个很局限的使用场景下，每个人都说经过严格培训的，那么你可以去做这样的假设，但是我还是不推荐你这么做，因为这样设计使得系统是脆弱的，不稳定的。如果能通过系统能自己避免这些错误，为什么不呢？况且，如果你把这个 API 开放给第三方的使用者，那么情况会更糟糕，你根本不知道他们会怎样去使用 API，这非常恐怖！','http://hadoop.apache.org/images/hadoop-logo.jpg','下载,java','Altas','1031329190@qq.com','0','1','# java 异常的选择【转载】

语音预览 - [小薇](https://hacpai.com/member/v)

- 00:00 / 00:00  

曾经听到过关于老司机和新手程序员的区别，其中最大的一个区别就在于异常的处理。新手程序员总是天真得把世界想得太美好，基本上没想过会出现异常的情况，而一个经验丰富的老司机会把最坏的打算考虑进去，给出相应的解决办法，使得发生异常时对系统的影响降低到最小。对此，我深表认同。现实的情况总是复杂的，而且还有很多不怀好意的人时刻准备攻击你的系统。使用你系统的用户越多，这种潜在的风险也就越大。

异常处理是应对这些风险的最强有力的武器。在 Java 的世界里，异常有两种：受检异常 (checked exception) 和非受检异常（unchecked exception）。想必所有的 Javaer 都使用过这两种异常，但是何时使用哪个异常缺失经常困扰程序员的头疼问题。在此，我分享一下自己的看法，如果你有不同的意见，请留意探讨。

### 1- 如果正常情况下会出现，那么使用 Checked-Exception；反之，则使用 Unchecked-Exception

这条准则是我在决定使用 Checked Exception 还是 Unchecked Exception 的第一原则。如果 API 的使用者在正常使用的过程中都会出现异常，那么这种异常就属于 Checked Exception。因为这种异常时属于程序执行流程众多分支之一，API 的使用者必须意识到这种情况，并做出相应的处理。

举个栗子：

我希望向 zookeeper 中创建一个节点，那么这种情况就隐含了两个前提条件：

*   父节点已经被创建（如果有的话）
*   本节点还未被创建

那么，这个 API 的签名大致应该是这样：

```
void createNode(String path,byte[] data) throws FatherNodeNotExist, NodeExist;

```

API 的使用者看到这个签名的定义时就会得到一个强烈的心理暗示，我需要考虑父节点不存在和本节点已存在的情况，那么他就不得不显示的去处理这两种异常。

有的朋友可能会争论说，我正常的情况下不会出现这种情况，因为使用这个 API 的前提就是先创建好父节点，而后创建本节点，那我就不用抛出两种异常了，使用者也轻松了许多。但事实真的如此吗？我们想当然的认为了使用者是`自己人`，他们会乖乖的按照我们的想法去先创建父节点，再创建本节点，如果是在一个很局限的使用场景下，每个人都说经过严格培训的，那么你可以去做这样的假设，但是我还是不推荐你这么做，因为这样设计使得系统是脆弱的，不稳定的。如果能通过系统能自己避免这些错误，为什么不呢？况且，如果你把这个 API 开放给第三方的使用者，那么情况会更糟糕，你根本不知道他们会怎样去使用 API，这非常恐怖！

有时候情况会变得很复杂，`正常情况`的鉴定变得很困难，你肯定会遇到这种时候，此时就需要结合你的业务场景去权衡其中的利弊。这依赖与你的经验和对业务场景的理解，我无法给你一个绝对的建议，那样是不负责任的。

我再举个常见的栗子：用户修改他拥有的资源信息。在菜谱 APP 中给出一个接口，让用户修改他菜谱的信息。那么这里一个隐含的条件就是用户修改他自己的菜谱信息，他是无权限修改别人的菜谱信息的。那么这个 API 的签名可能是这样的：

```
void updateMenu(long menuId,long uid,String title,String description...);

```

如果用户尝试去修改不属于他的菜谱呢？我们是否需要 throws UserPermissionException 之类受检异常？我认为是不需要的。判断是这属于正常情况吗？我认为这不算是正常情况。
正常情况下，客户端调用修改信息的接口，那么 menuId 一定是属于这个用户的。如果出现这种情况，要么是你系统设计的就有问题，要么就是不怀好意的人在破坏你的系统。前者需要重新设计我们的系统，而后者我们更不用关系，直接抛出一个 RuntimeException 就可以，因为他不算正常用户。

### 2\\. 调用者中能从异常中恢复的，推荐使用受检异常；反之，则使用非受检异常

注意这里的一个关键词是`推荐`，决定使用哪种异常最为根本的还是第一条原则。如果第一条原则难以判断时，才考虑调用者。这条原则和`Effective Java`中的第 58 条很像，如果有这本书的朋友可以再拿出来读读。

我和`Effective Java`#58 不同的观点在于，这条原则只能是`推荐`，另外，对于所有不能恢复的情况我都建议使用非受检异常。我对可恢复的理解是，如果 API 的调用者能够处理你抛出的异常，并给出积极的响应和反馈，并指导它的使用者做出调整，那么这就是可恢复的。不可恢复就是 API 的调用者无法处理你抛出的异常，或者仅仅只是打个 LOG 记录一下，不能对它的使用者做出提示，那么都可认为是不可恢复的。

还是最开始的栗子，如果调用`createNode`的调用者能响应`FatherNodeNotExist`，并把这种情况反应到终端上，那么使用受检异常是有积极意义的。对于不可恢复的情况，包括编程错误，我建议都是用非受检异常，这样系统能`fail fast`，把异常对系统的影响降到最低，同时你还能获得一个完整的异常堆栈信息，何乐而不为呢？！

基本上，这两条原则就能帮你决定到底是使用受检异常还是非受检异常了。当然，现实的情况很复杂，需要根据你所处的具体业务场景来判断，经验也是不可或缺的。在设计 API 的时候多问下自己这是正常情况下出现的吗，调用者可以处理这个异常吗，这会很有帮助的！

异常处理是一个非常大的话题，除了选择`checked exception`还是`unchecked exception`以外，还有一些一般的通用原装，例如：

*   只抛出与自己有关的异常
*   封装底层异常
*   尽量在抛出异常的同时多携带上下文信息

这些在`Effective Java`中都有详细的介绍，朋友可以认真读一下这本书，写的非常好！

对异常处理有不同理解的朋友可以给我留言，一起讨论，共同进步！','/articles/2017/06/24/1498300488413.html','1','1','0','2017-06-24 18:34:48','2017-06-24 18:34:48',0.971602187788021,'1','1','','CodeMirror-Markdown'),
('1498359380070','数据科学库Numpy学习','Python中用列表(list)保存一组值，可以用来当作数组使用，不过由于列表的元素可以是任何对象，因此列表中所保存的是对象的指针。这样为了保存一个简单的[1,2,3]，需要有3个指针和三个整数对象。对于数值运算来说这种结构显然比较浪费内存和CPU计算时间。此外Python还提供了一个array模块，array对象和列表不同，它直接保存数值，和C语言的一维数组比较类似。但是由于它不支持多维，也没有各种运算函数，因此也不适合做数值运算。
NumPy提供了两种基本的对象：ndarray（N-dimensional array object）和 ufunc（universal function object）。ndarray(下文统一称之为数组)是存储单一数据类型的多维数组，而ufunc则是能够对数组进行处理的函数。','http://hadoop.apache.org/images/hadoop-logo.jpg','python','Altas','1031329190@qq.com','0','4','# 一、Numpy简介：

Python中用列表(list)保存一组值，可以用来当作数组使用，不过由于列表的元素可以是任何对象，因此列表中所保存的是对象的指针。这样为了保存一个简单的[1,2,3]，需要有3个指针和三个整数对象。对于数值运算来说这种结构显然比较浪费内存和CPU计算时间。此外Python还提供了一个array模块，array对象和列表不同，它直接保存数值，和C语言的一维数组比较类似。但是由于它不支持多维，也没有各种运算函数，因此也不适合做数值运算。

NumPy提供了两种基本的对象：ndarray（N-dimensional array object）和 ufunc（universal function object）。ndarray(下文统一称之为数组)是存储单一数据类型的多维数组，而ufunc则是能够对数组进行处理的函数。

# 二、nadrray对象：

### 1、创建一个数组对象:

*   函数生成：ones(),zeros(),eye(),diag()......
    *   zeros:（4）,zeros(（5,2）)生成全0的数组
    *   

        >>> import numpy as np
        >>> np.zeros(5) //一维
        array([ 0.,  0.,  0.,  0.,  0.])
        >>> np.zeros((5,2))//二维
        array([[ 0., 0.],
               [ 0., 0.],
               [ 0., 0.],
               [ 0., 0.],
               [ 0., 0.]])

        　>>> np.zeros((5,2,2))//三维
          array([[[ 0., 0.],
                  [ 0., 0.]],

                 [[ 0., 0.],
                  [ 0., 0.]],

                 [[ 0., 0.],
                  [ 0., 0.]],

                 [[ 0., 0.],
                  [ 0., 0.]],

                 [[ 0., 0.],
                  [ 0., 0.]]])

        

    *   ones():生成全1的数组
    *   

        >>> import numpy as np
        >>> np.ones(10) //一维
        array([ 1.,  1.,  1.,  1.,  1.,  1.,  1.,  1.,  1.,  1.])
        >>> np.ones(10,dtype="int32")//一维
        array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])

          >>> np.ones((4,1)) //二维
          array([[ 1.],
                 [ 1.],
                 [ 1.],
                 [ 1.]])

        

    *   arange函数：类似于list的range函数，通过指定初始值，终值，和**步长**来生成一维数组。（不包括终值）
    *   

        import numpy as np
        d = np.arange(0,10,1)
        e =  np.arange(0,10,2)
        print (d)
        #----------------------------------
        [0 1 2 3 4 5 6 7 8 9]
        [0 2 4 6 8]

        

    *   linspace函数：通过指定初始值，终值和 **元素个数**来创建一维数组。（默认包含终值，可用endpoint关键字指定包含终值）
    *   

        f = np.linspace(0,10,11,endpoint=False)
        print (f)
        #----------------------------------------
        [ 0\\.          0.90909091  1.81818182  2.72727273  3.63636364  4.54545455
          5.45454545  6.36363636  7.27272727  8.18181818  9.09090909]

        

    *   logspace函数：类似linspace创建等比数列,下面的例子产生1(10^0)到100(10^2)、有20个元素的等比数列:
    *   

        g = np.logspace(0,2,20)
        print (g)
        [   1\\.            1.27427499    1.62377674    2.06913808    2.6366509
            3.35981829    4.2813324     5.45559478    6.95192796    8.8586679
           11.28837892   14.38449888   18.32980711   23.35721469   29.76351442
           37.92690191   48.32930239   61.58482111   78.47599704  100\\.        ]

        

    *   frombuffer,fromstring,fromfile等函数可以从字节序列创建数组。python自负产是字符序列，每个字符占一个字节，因此如果从字符串s创建一个8bit的整数数组的话得到的每个元书就是字符的ascii码值。
    *   

        s= "abcdefgh"
        sa = np.fromstring(s,dtype = np.int8)
        print (sa)
        #--------------------------------------
        [ 97  98  99 100 101 102 103 104]

        

    *   fromfuction函数：传入一个函数来创建数组
    *   

        def fun(i,j):
            return (i+1)*(j+1)
        fa = np.fromfunction(fun,(9,9)) #(9,9)表示数组的shape，传给fun的书是每个元素的定位，有81个位置，可以得到81个元素
        print (fa)
        #---------------------------------------------------
        [[  1\\.   2\\.   3\\.   4\\.   5\\.   6\\.   7\\.   8\\.   9.]
         [  2\\.   4\\.   6\\.   8\\.  10\\.  12\\.  14\\.  16\\.  18.]
         [  3\\.   6\\.   9\\.  12\\.  15\\.  18\\.  21\\.  24\\.  27.]
         [  4\\.   8\\.  12\\.  16\\.  20\\.  24\\.  28\\.  32\\.  36.]
         [  5\\.  10\\.  15\\.  20\\.  25\\.  30\\.  35\\.  40\\.  45.]
         [  6\\.  12\\.  18\\.  24\\.  30\\.  36\\.  42\\.  48\\.  54.]
         [  7\\.  14\\.  21\\.  28\\.  35\\.  42\\.  49\\.  56\\.  63.]
         [  8\\.  16\\.  24\\.  32\\.  40\\.  48\\.  56\\.  64\\.  72.]
         [  9\\.  18\\.  27\\.  36\\.  45\\.  54\\.  63\\.  72\\.  81.]]

        

*   序列传入：
    *   

        import numpy as np
        a = np.array([1,2,3,4,5])
        b = np.array([[1,2,3,4],[4,5,6,7],[7,8,9,10]])
        print (a)
        print (b)
        #-------------------------------------------
        [1 2 3 4 5]
        [[ 1  2  3  4]
         [ 4  5  6  7]
         [ 7  8  9 10]]

        

### 2、数组的属性：

*   *   **ndim属性：数组的维数**
    *   

        >>> np.ones((3,2))
        array([[ 1.,  1.],
               [ 1.,  1.],
               [ 1.,  1.]])
        >>> np.ones((3,2)).ndim
        2 #二维

        

    *   **size：数组元素的总个数，等于shape属性中元组元素的乘积。**
    *   

        >>> np.ones((3,2)).size
        6 #6个元素

        

    *   **dtype**属性：查看或指定数组类型
    *   

        print(a.dtype) # 数组的元素类型 int32，32bit整型数据
        print(b.dtype) # 数组的元素类型 int32
        aa = np.array([2,3,4,5,6],dtype = np.float)
        print (aa)
        #---------------------------------------------- [ 2\\.  3\\.  4\\.  5\\.  6.]

        

    *   **shape**属性：查看或改变数组的大小
    *   

        print(a.shape) #数组的大小 （5）
        print(b.shape) #数组的大小 shape （3，4）

        #修改shape来修改数组轴的大小：
        b.shape = (4,3)
        print (b)
        #-------------------------------------- [[ 1  2  3]
         [ 4  4  5]
         [ 6  7  7]
         [ 8  9 10]]
        #如果某个轴的值为-1，则会根据数组的总数计算此轴的长度。如b一共12个元素，修改shape
        b.shape = (2,-1) #那么就会得到一个2*6的数组
        print (b)
        #-------------------------------------- [[ 1  2  3  4  4  5]
         [ 6  7  7  8  9 10]]
        b.shape = (6,-1) #那么就会得到一个6*2的数组
        print (b)
        #-------------------------------------- [[ 1  2]
         [ 3  4]
         [ 4  5]
         [ 6  7]
         [ 7  8]
         [ 9 10]]

        

*   *   **reshape**属性：修改一个数组的尺寸得到一个新数组，原数组不变，但是这两个数组共享内存，如果修改值的话这两个数组都会变。
    *   

        c = a.reshape((5,1)) #此方法实验证明:只能是x*y=数组的总元素才可以，这里1*5只能换成5*1
        print (c) #此时a的结构并没改变,a,c共享内存。
        print (a)
        #--------------------------------------
        [[1]
         [2]
         [3]
         [4]
         [5]]
        [1 2 3 4 5]
        #修改a[1][2]的值
        a[2] = 100
        print (c) #此时a的结构并没改变,a,c共享内存。
        print (a)
        #--------------------------------------
        [1 2 3 4 5]
        [[  1]
         [  2]
         [100]
         [  4]
         [  5]]
        [  1   2 100   4   5]

        

### 3、数组存取：

*   切片法[[[----***逗号“，”分行，列。冒号“：”分范围***---]]]
*   

    >>> import numpy as np
    >>> np.array([[1,2,3,4],[4,5,6,7],[7,8,9,10]])
    array([[ 1,  2,  3,  4],
           [ 4,  5,  6,  7],
           [ 7,  8,  9, 10]])
    >>> b = np.array([[1,2,3,4],[4,5,6,7],[7,8,9,10]])
    >>> b[0]
    array([1, 2, 3, 4])
    >>> b[1]
    array([4, 5, 6, 7])
    >>> b[1,2]
    6
    >>> b[1,3]
    7
    >>> b[1,-1]
    7
    >>> b[-1]
    array([ 7,  8,  9, 10])
    >>> b[-1,2]
    9
    >>> b[-1,-2]
    9
    >>> b[:-2] #0--负2列
    array([[1, 2, 3, 4]])
    >>> b[1:2]
    array([[4, 5, 6, 7]])
    >>> b[1:3]
    array([[ 4,  5,  6,  7],
           [ 7,  8,  9, 10]])
    #*************矩阵的截取***********************

      >>> a=np.mat(np.random.randint(2,15,size=(3,3)))
      >>> a
      matrix([[ 4, 10, 14],
              [11, 3, 12],
              [ 4, 2, 12]])
      >>> a[1:,1:,]
      matrix([[ 3, 12],
              [ 2, 12]])

    

# 三、矩阵对象matrix：

numpy库提供了matrix类，使用matrix类创建的是矩阵对象，它们的加减乘除运算缺省采用矩阵方式计算。但是由于NumPy中同时存在ndarray和matrix对象，因此很容易将两者弄混。

*   创建矩阵：matrix函数（也可以用简写mat） a = np.matrix([[1,2,3],[5,5,6],[7,9,9]]) 
*   

    #利用**ones()**创建一个2*4的全1矩阵

    >>> np.mat(np.ones((2,4))) 
    matrix([[ 1.,  1.,  1.,  1.],
            [ 1.,  1.,  1.,  1.]])

    

*   

    #用numpy的随机数**rand**产生一个2*2的随机数组并转化成矩阵

    >>> np.mat(np.random.rand(2,2)) 
    matrix([[ 0.4340437 ,  0.98055453],
            [ 0.52937992,  0.81452857]])

    

    

    #产生一个2-8之间的整数数组大小是2*5，再转换成矩阵。

    >>> np.mat(np.random.randint(2,8,size=(2,5)))
    matrix([[3, 6, 4, 4, 5],
            [3, 7, 7, 2, 3]])

    

    

    #eye()函数产生单位对角数组，转换成单位对角阵
    >>> np.mat(np.eye(2,2,dtype=int))
    matrix([[1, 0],
            [0, 1]])
    >>> np.mat(np.eye(3,2,dtype=int))
    matrix([[1, 0],
            [0, 1],
            [0, 0]])
    >>> np.mat(np.eye(3,3,dtype=int))
    matrix([[1, 0, 0],
            [0, 1, 0],
            [0, 0, 1]])

    

    

    #将一维数组转换成对角阵
    >>> np.mat(np.diag([1,2,3]))
    matrix([[1, 0, 0],
            [0, 2, 0],
            [0, 0, 3]])
    >>>

    

*   矩阵运算：乘积，求逆，幂运算，转置

    

    >>> import numpy as np
    >>> a = np.matrix([[1,2,3],[5,5,6],[7,9,9]])
    >>> a
    matrix([[1, 2, 3],
            [5, 5, 6],
            [7, 9, 9]])
    >>> a**-1 #求逆 a.I也是a的逆 matrix([[-0.6       ,  0.6       , -0.2 ],
            [-0.2       , -0.8       ,  0.6 ],
            [ 0.66666667,  0.33333333, -0.33333333]])
    >>> a*a**-1 #a乘a的逆，矩阵内积 matrix([[  1.00000000e+00,   1.66533454e-16,  -1.11022302e-16],
            [  0.00000000e+00,   1.00000000e+00,  -4.44089210e-16],
            [  4.44089210e-16,   5.55111512e-17,   1.00000000e+00]])
    >>> a.T #a的转置
    matrix([[1, 5, 7],
            [2, 5, 9],
            [3, 6, 9]])
    >>>

    

*   矩阵函数：
    *   dot():做矩阵乘法，一维数组做点积，二维数组做内积，不过乘积必须满足矩阵相乘的形式（M(x,y)*M2(y,z)）,两个矩阵的行列必须对应，都是一维的话必须是一个行向量，一个列向量，可以用m.reshape(-1,1)将行向量转为列向量，或者m.reshape(1,-1)将列向量转为行向量。
    *   inner():
    *   outer():
*   矩阵中更高级的一些运算可以在NumPy的线性代数子库linalg中找到。例如inv函数计算逆矩阵，solve函数可以求解多元一次方程组。
*   

    >>> from numpy import linalg as ll
    >>> ll.inv(a) #求逆
    matrix([[-0.6       ,  0.6       , -0.2 ],
            [-0.2       , -0.8       ,  0.6 ],
            [ 0.66666667,  0.33333333, -0.33333333]])
    >>> a
    matrix([[1, 2, 3],
            [5, 5, 6],
            [7, 9, 9]])

    

 参考：http://blog.csdn.net/sunny2038/article/details/9002531

 参考：http://old.sebug.net/paper/books/scipydoc/numpy_intro.html#id8','/articles/2017/06/25/1498359380070.html','1','1','0','2017-06-25 10:56:20','2017-06-25 10:56:20',0.15515728643478,'1','1','','CodeMirror-Markdown'),
('1498374240953','图片测试','温泉鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅 ','http://hadoop.apache.org/images/hadoop-logo.jpg','七牛','Altas','1031329190@qq.com','0','0','123333333333333333333
1233333333333333333','/articles/2017/06/25/1498374240953.html','0','0','0','2017-06-25 18:05:00','2017-06-25 18:05:00',0.800740678374288,'1','1','','CodeMirror-Markdown'),
('1498395264959','PCA的算法实现1312313','*   用途：数据降维test
*   原理：线性映射（或线性变换），简单的来说就是将高维空间数据投影到低维空间上，那么在数据分析上，我们是将数据的主成分（包含信息量大的维度）保留下来，忽略掉对数据描述不重要的成分。即将主成分维度组成的向量空间作为低维空间，将高维数据投影到这个空间上就完成了降维的工作。
','http://hadoop.apache.org/images/hadoop-logo.jpg','七牛,java8,java','Altas','1031329190@qq.com','0','4','&*&：2017/6/16update，最近几天发现阅读这篇文章的朋友比较多，自己阅读发现，部分内容出现了问题，进行了更新。
# 一、什么是PCA：摘用一下百度百科的解释

PCA([Principal Component Analysis](http://setosa.io/ev/principal-component-analysis/)),主成分分析，是一种统计方法，通过正交变换将一组可能存在相关性的变量转换为一组线性不相关的变量，转换后的这组变量叫主成分。

# 二、PCA的用途及原理：

*   用途：数据降维
*   原理：线性映射（或线性变换），简单的来说就是将高维空间数据投影到低维空间上，那么在数据分析上，我们是将数据的主成分（包含信息量大的维度）保留下来，忽略掉对数据描述不重要的成分。即将主成分维度组成的向量空间作为低维空间，将高维数据投影到这个空间上就完成了降维的工作。

# 三、PCA的算法实现：

*   算法思想：选取数据差异最大的方向（方差最大的方向，方差反应的是数据与其方差（均值）之间的偏离程度，我们通常认为方差越大数据的信息量就越大）作为第一个主成分，第二个主成分选择方差次大的方向，并且与第一个主成分正交。不断重复这个过程直到找到n个主成分。　　
*   算法步骤：
    *   输入：数据集D={x1,x2,x3,x4,....xm},低维空间维数 n（xi表示数据的第i维，m表示数据维度为m，n表示最终要变换的维度）
    *   操作：1.对所有样本进行中心化，（对每个维度减去这个维度的数据均值）
    *   2.计算样本的协方差矩阵
    *   3.对协方差矩阵做特征值分解
    *   4.选取前n个最大的特征值对应的的特征向量构成特征向量矩阵W
    *   输出：Wm*n*Dh*m = D′(一个m*n的矩阵乘以数据集h*m的矩阵得到h*n的矩阵D′)D′就是降维后的数据集h*m->h*n(m
*   算法实现：python3.6<机器学习实战代码>
*   

    # -*- coding:utf-8 -*- # Filename: pca.py # Author：Ljcx

    """ pca:(主成分分析)降维算法 """
    from numpy import*
    import pandas as pd import matplotlib.pyplot as plt class PcaM(object): def __init__(self): pass

        """ 读取数据格式化成矩阵 """

        def loadData(self, filename, delim=\'\\t\'):
            data = pd.read_csv(filename)
            x = data[list(range(4))] print (x) return mat(x) def pca(self, dataMat, maxFeature=105):
            meanValue = mean(dataMat, axis=0) # 去中心，元数据减去均值，值得新的矩阵均值为0
            dataRemMat = dataMat - meanValue # 求矩阵的协方差矩阵
            covMat = cov(dataRemMat, rowvar=0) print ("-------covMatt------") print (covMat) # 求特征值和特徵向量
            feaValue, feaVect = linalg.eig(mat(covMat)) print ("-------特征值-------") print (feaValue) print ("-------特征向量-------") print (feaVect) # 返回从小到大的索引值print "feaSort" + str(feaValueSort)
            feaValueSort = argsort(feaValue)
            feaValueTopN = feaValueSort[:-(maxFeature + 1):-1]
            redEigVects = feaVect[:, feaValueTopN]  # 选择之后的特征向量矩阵
            print ("--------TopN特征向量矩阵--------") print (redEigVects) print (shape(redEigVects))
            lowDataMat = dataRemMat * redEigVects  # 数据矩阵*特征向量矩阵 得到降维后的矩阵
            reconMat = lowDataMat * redEigVects.T + meanValue #这一步做数据恢复，并没有看懂这么做的意义 print (lowDataMat) return lowDataMat, reconMat def plotW(self, lowDataMat, reconMat):
            fig = plt.figure()
            ax = fig.add_subplot(111)
            ax.scatter(lowDataMat[:, 0], lowDataMat[:, 1], marker=\'*\', s=90)
            ax.scatter(reconMat[:, 0], reconMat[:, 1], marker=\'*\', s=50, c=\'red\')
            plt.show() def replaceNanWithMean(self):
            datMat = self.loadData(\'testdata.txt\', \' \')
            numFeat = shape(datMat)[1] for i in range(numFeat): # values that are not NaN (a number)
                meanVal = mean(datMat[nonzero(~isnan(datMat[:, i].A))[0], i]) # set NaN values to mean
                datMat[nonzero(isnan(datMat[:, i].A))[0], i] = meanVal print(datMat) return datMat if __name__ == "__main__":
        p = PcaM()
        dataMat = p.replaceNanWithMean()
        lowDataMat, reconMat = p.pca(dataMat, 2)
        p.plotW(dataMat, reconMat)

    

*   得到降维后数据分布与恢复之后的数据的分布作比较
*   ![](http://images2015.cnblogs.com/blog/721561/201706/721561-20170616185133212-1678326139.png)
*   数据集data：采用的是150*4的鸢尾花数据集
*   ![](http://images.cnblogs.com/OutliningIndicators/ContractedBlock.gif) 原始数据集

*   协方差矩阵cov（方阵4*4）：
*   

    [[ 0.68656811 -0.0372787   1.27036233  0.51534691]
     [-0.0372787   0.18792128 -0.31673091 -0.11574868]
     [ 1.27036233 -0.31673091  3.09637221  1.28912434]
     [ 0.51534691 -0.11574868  1.28912434  0.57956557]]

    

*   特征值featValue(4)：
*   

    [ 4.20438706  0.24314579  0.07905128  0.02384304]

    

*   特征向量矩阵featVet（方阵4*4）：（每一列特征值对应一个特征向量）
*   

    [[ 0.36263433 -0.6558202  -0.58115529  0.3172613 ]
     [-0.08122848 -0.73001455  0.59619427 -0.32408808]
     [ 0.85629752  0.17703033  0.07265649 -0.47972477]
     [ 0.35868209  0.07509244  0.54911925  0.75111672]]

    

*   根据特征值可以看出前2个特征值占比重比较大，所以选择前两个特征值对应的特征向量组正特征向量矩阵
*   topX特征向量矩阵redEigVects：
*   

    [[ 0.36263433 -0.6558202 ]
     [-0.08122848 -0.73001455]
     [ 0.85629752  0.17703033]
     [ 0.35868209  0.07509244]]

    

*   降维后的数据集：data(m*n)*redEigVects(n*x)=data(m*x)原数据集乘以选择后的特征向量矩阵得到降维后的数据集
*   ![](http://images.cnblogs.com/OutliningIndicators/ContractedBlock.gif) 降维后的数据集

# 四、PCA算法原理：

*   **一句话总结这个算法的精髓：**

**　　　数据集D乘一个矩阵W，使得m*n的矩阵变成了m*x的矩阵，数据从n维降到了x维。**

*   **那么如何找到这个W矩阵很关键。这里找的前x个最大的特征值对应的特征向量构成的矩阵作为w**。

  我们先来看一下W*D，两个矩阵相乘的意义:

　　　就是将右矩阵投影(变换)在以左矩阵作为基的空间中,原理中也说到它就是一种线性映射（线性变换）。(这里所说的左右矩阵跟我们数据是列向量还是行向量有关，如果是行向量那么久恰好相反，事实上并不用在意这个是行向量还是列向量，我们只要知道矩阵的数据是在行上还是列上，维度在行上还是列上，就很容易搞清楚。)

*   **为什么要算协方差矩阵?**

　　根据方差和协方差的计算公式可以看出当均值为0的时候，协方差矩阵=A*AT,这也是为什么要对数据要进行中心化(数据减去均值)的原因（极大简化了协方差矩阵的计算），协方差矩阵是个方阵且是个对称阵，它的的对角线就是方差。方差是反映数据信息量的大小，我们通常说的方差指的是数据在平行于坐标轴上的信息量传播。也就是说每个维度上信息量的传播。这是在二维数据上，如果实在多维数据上，我们要度量数据在多个维度上信息的传播量以及非平行于坐标轴放方向上数据的传播，就是要用协方差表示，从矩阵中我们可以观察到数据在每一个维度上的传播。数据的协方差确定了传播的方向，而方差确定了传播的大小，当然方差和协方差是正相关的。所以说，方差最大的方向就是协方差最大的方向。而协方差的特征向量topX总是指向最大方差的方向，特征向量正交，所以作为一组变换基向量很合适（其实这种逆向推到很蹩脚）。

　　说实话，看的明白，很多东西讲不清楚，工科出身，数学功底差的一塌糊涂。PCA思想很简单，用Python实现也很简单，几个步骤照着做就好了，但是用特征向量做线性变换这是个核心的地方。最后的目的都是向最大方差靠近。当然为什么要求协方差矩阵，我也是理解了很久。

看到的一些很好的文章给大家，希望对大家有所启发。

协方差矩阵的集合解释：[http://www.cnblogs.com/nsnow/p/4758202.html](http://www.cnblogs.com/nsnow/p/4758202.html)

PCA的数学原理：[http://blog.csdn.net/xiaojidan2011/article/details/11595869](http://blog.csdn.net/xiaojidan2011/article/details/11595869)','/PCA','1','1','0','2017-06-25 21:01:08','2017-06-26 12:31:51',0.0340970149512297,'1','1','','CodeMirror-Markdown'),
('1498395852962','Apache Spark框架简介','Spark通过在数据处理过程中成本更低的洗牌（Shuffle）方式，将MapReduce提升到一个更高的层次。利用内存数据存储和接近实时的处理能力，Spark比其他的大数据处理技术的性能要快很多倍。
','http://www.36dsj.com/wp-content/uploads/2015/10/1155-600x312.jpg','Spark','Altas','1031329190@qq.com','0','3','## Hadoop和Spark

Hadoop这项大数据处理技术大概已有十年历史，而且被看做是首选的大数据集合处理的解决方案。MapReduce是一路计算的优秀解决方案，不过对于需要多路计算和算法的用例来说，并非十分高效。数据处理流程中的每一步都需要一个Map阶段和一个Reduce阶段，而且如果要利用这一解决方案，需要将所有用例都转换成MapReduce模式。

在下一步开始之前，上一步的作业输出数据必须要存储到分布式文件系统中。因此，复制和磁盘存储会导致这种方式速度变慢。另外Hadoop解决方案中通常会包含难以安装和管理的集群。而且为了处理不同的大数据用例，还需要集成多种不同的工具（如用于机器学习的Mahout和流数据处理的Storm）。

如果想要完成比较复杂的工作，就必须将一系列的MapReduce作业串联起来然后顺序执行这些作业。每一个作业都是高时延的，而且只有在前一个作业完成之后下一个作业才能开始启动。

而Spark则允许程序开发者使用有向无环图（[DAG](http://en.wikipedia.org/wiki/Directed_acyclic_graph)）开发复杂的多步数据管道。而且还支持跨有向无环图的内存数据共享，以便不同的作业可以共同处理同一个数据。

Spark运行在现有的Hadoop分布式文件系统基础之上（[HDFS](http://wiki.apache.org/hadoop/HDFS)）提供额外的增强功能。它支持[将Spark应用部署到](http://databricks.com/blog/2014/01/21/Spark-and-Hadoop.html)现存的Hadoop v1集群（with SIMR – Spark-Inside-MapReduce）或Hadoop v2 YARN集群甚至是[Apache Mesos](http://mesos.apache.org/)之中。

我们应该将Spark看作是Hadoop MapReduce的一个替代品而不是Hadoop的替代品。其意图并非是替代Hadoop，而是为了提供一个管理不同的大数据用例和需求的全面且统一的解决方案。

## Spark特性

Spark通过在数据处理过程中成本更低的洗牌（Shuffle）方式，将MapReduce提升到一个更高的层次。利用内存数据存储和接近实时的处理能力，Spark比其他的大数据处理技术的性能要快很多倍。

Spark还支持大数据查询的延迟计算，这可以帮助优化大数据处理流程中的处理步骤。Spark还提供高级的API以提升开发者的生产力，除此之外还为大数据解决方案提供一致的体系架构模型。

Spark将中间结果保存在内存中而不是将其写入磁盘，当需要多次处理同一数据集时，这一点特别实用。Spark的设计初衷就是既可以在内存中又可以在磁盘上工作的执行引擎。当内存中的数据不适用时，Spark操作符就会执行外部操作。Spark可以用于处理大于集群内存容量总和的数据集。

Spark会尝试在内存中存储尽可能多的数据然后将其写入磁盘。它可以将某个数据集的一部分存入内存而剩余部分存入磁盘。开发者需要根据数据和用例评估对内存的需求。Spark的性能优势得益于这种内存中的数据存储。

Spark的其他特性包括：

*   支持比Map和Reduce更多的函数。
*   优化任意操作算子图（operator graphs）。
*   可以帮助优化整体数据处理流程的大数据查询的延迟计算。
*   提供简明、一致的Scala，Java和Python API。
*   提供交互式Scala和Python Shell。目前暂不支持Java。

Spark是用[Scala程序设计语言](http://www.scala-lang.org/)编写而成，运行于Java虚拟机（JVM）环境之上。目前支持如下程序设计语言编写Spark应用：

*   Scala
*   Java
*   Python
*   Clojure
*   R

## Spark生态系统

除了Spark核心API之外，Spark生态系统中还包括其他附加库，可以在大数据分析和机器学习领域提供更多的能力。

这些库包括：

*   **Spark Streaming:**
    *   [Spark Streaming](https://spark.apache.org/streaming/)基于微批量方式的计算和处理，可以用于处理实时的流数据。它使用DStream，简单来说就是一个弹性分布式数据集（RDD）系列，处理实时数据。
*   **Spark SQL:**
    *   [Spark SQL](https://spark.apache.org/sql/)可以通过JDBC API将Spark数据集暴露出去，而且还可以用传统的BI和可视化工具在Spark数据上执行类似SQL的查询。用户还可以用Spark SQL对不同格式的数据（如JSON，Parquet以及数据库等）执行ETL，将其转化，然后暴露给特定的查询。
*   **Spark MLlib:**
    *   [MLlib](https://spark.apache.org/mllib/)是一个可扩展的Spark机器学习库，由通用的学习算法和工具组成，包括二元分类、线性回归、聚类、协同过滤、梯度下降以及底层优化原语。
*   **Spark GraphX:**
    *   [GraphX](https://spark.apache.org/graphx/)是用于图计算和并行图计算的新的（alpha）Spark API。通过引入弹性分布式属性图（Resilient Distributed Property Graph），一种顶点和边都带有属性的有向多重图，扩展了Spark RDD。为了支持图计算，GraphX暴露了一个基础操作符集合（如subgraph，joinVertices和aggregateMessages）和一个经过优化的Pregel API变体。此外，GraphX还包括一个持续增长的用于简化图分析任务的图算法和构建器集合。

除了这些库以外，还有一些其他的库，如BlinkDB和Tachyon。

[BlinkDB](http://blinkdb.org/)是一个近似查询引擎，用于在海量数据上执行交互式SQL查询。BlinkDB可以通过牺牲数据精度来提升查询响应时间。通过在数据样本上执行查询并展示包含有意义的错误线注解的结果，操作大数据集合。

[Tachyon](http://tachyon-project.org/index.html)是一个以内存为中心的分布式文件系统，能够提供内存级别速度的跨集群框架（如Spark和MapReduce）的可信文件共享。它将工作集文件缓存在内存中，从而避免到磁盘中加载需要经常读取的数据集。通过这一机制，不同的作业/查询和框架可以以内存级的速度访问缓存的文件。
此外，还有一些用于与其他产品集成的适配器，如Cassandra（[Spark Cassandra 连接器](http://www.datastax.com/dev/blog/accessing-cassandra-from-spark-in-java)）和R（SparkR）。Cassandra Connector可用于访问存储在Cassandra数据库中的数据并在这些数据上执行数据分析。

下图展示了在Spark生态系统中，这些不同的库之间的相互关联。

![](http://cdn4.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-spark-introduction/zh/resources/0304081.png)

**图1\\. Spark****框架中的库**

我们将在这一系列文章中逐步探索这些Spark库

## Spark体系架构

Spark体系架构包括如下三个主要组件：

*   数据存储
*   API
*   管理框架

接下来让我们详细了解一下这些组件。

**数据存储：**

Spark用HDFS文件系统存储数据。它可用于存储任何兼容于Hadoop的数据源，包括HDFS，HBase，Cassandra等。

**API****：**

利用API，应用开发者可以用标准的API接口创建基于Spark的应用。Spark提供Scala，Java和Python三种程序设计语言的API。

下面是三种语言Spark API的网站链接。

*   [**Scala API**](http://spark.apache.org/docs/latest/api/scala/index.html#org.apache.spark.package)
*   [**Java**](http://spark.apache.org/docs/latest/api/java/index.html)
*   [**Python**](http://spark.apache.org/docs/latest/api/python/index.html)

**资源管理：**

Spark既可以部署在一个单独的服务器也可以部署在像Mesos或YARN这样的分布式计算框架之上。

下图2展示了Spark体系架构模型中的各个组件。

![](http://cdn4.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-spark-introduction/zh/resources/0304082.png)

**图2 Spark****体系架构**

## 弹性分布式数据集

[弹性分布式数据集](https://spark.apache.org/docs/latest/programming-guide.html#resilient-distributed-datasets-rdds)（基于Matei的[研究论文](https://www.cs.berkeley.edu/~matei/papers/2012/nsdi_spark.pdf)）或RDD是Spark框架中的核心概念。可以将RDD视作数据库中的一张表。其中可以保存任何类型的数据。Spark将数据存储在不同分区上的RDD之中。

RDD可以帮助重新安排计算并优化数据处理过程。

此外，它还具有容错性，因为RDD知道如何重新创建和重新计算数据集。

RDD是不可变的。你可以用变换（Transformation）修改RDD，但是这个变换所返回的是一个全新的RDD，而原有的RDD仍然保持不变。

RDD支持两种类型的操作：

*   变换（Transformation）
*   行动（Action）

**变换：**[变换](https://spark.apache.org/docs/latest/programming-guide.html#transformations)的返回值是一个新的RDD集合，而不是单个值。调用一个变换方法，不会有任何求值计算，它只获取一个RDD作为参数，然后返回一个新的RDD。

变换函数包括：map，filter，flatMap，groupByKey，reduceByKey，aggregateByKey，pipe和coalesce。

**行动：**[行动](https://spark.apache.org/docs/latest/programming-guide.html#actions)操作计算并返回一个新的值。当在一个RDD对象上调用行动函数时，会在这一时刻计算全部的数据处理查询并返回结果值。

行动操作包括：reduce，collect，count，first，take，countByKey以及foreach。

## 如何安装Spark

安装和使用Spark有几种不同方式。你可以在自己的电脑上将Spark作为一个独立的框架安装或者从诸如[Cloudera](http://www.cloudera.com/content/support/en/downloads/quickstart_vms/cdh-5-1-x.html)，HortonWorks或MapR之类的供应商处获取一个Spark虚拟机镜像直接使用。或者你也可以使用在云端环境（如[Databricks Cloud](http://databricks.com/product)）安装并配置好的Spark。

在本文中，我们将把Spark作为一个独立的框架安装并在本地启动它。最近Spark刚刚发布了1.2.0版本。我们将用这一版本完成示例应用的代码展示。

## 如何运行Spark

当你在本地机器安装了Spark或使用了基于云端的Spark后，有几种不同的方式可以连接到Spark引擎。

下表展示了不同的Spark运行模式所需的Master URL参数。

![](http://cdn4.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-spark-introduction/zh/resources/0304083.png)

## 如何与Spark交互

Spark启动并运行后，可以用Spark shell连接到Spark引擎进行交互式数据分析。Spark shell支持Scala和Python两种语言。Java不支持交互式的Shell，因此这一功能暂未在Java语言中实现。

可以用spark-shell.cmd和pyspark.cmd命令分别运行Scala版本和Python版本的Spark Shell。

## Spark网页控制台

不论Spark运行在哪一种模式下，都可以通过访问Spark网页控制台查看Spark的作业结果和其他的统计数据，控制台的URL地址如下：

http://localhost:4040

Spark控制台如下图3所示，包括Stages，Storage，Environment和Executors四个标签页

**（点击查看大图）**

[![](http://cdn4.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-spark-introduction/zh/resources/0304084.png)](http://cdn4.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-spark-introduction/zh/resources/0304084.png)

**图3\\. Spark****网页控制台**

### 共享变量

Spark提供两种类型的共享变量可以提升集群环境中的Spark程序运行效率。分别是广播变量和累加器。

**广播变量：**广播变量可以在每台机器上缓存只读变量而不需要为各个任务发送该变量的拷贝。他们可以让大的输入数据集的集群拷贝中的节点更加高效。

下面的代码片段展示了如何使用广播变量。

//
// Broadcast Variables
//
val broadcastVar = sc.broadcast(Array(1, 2, 3))
broadcastVar.value

**累加器：**只有在使用相关操作时才会添加累加器，因此它可以很好地支持并行。累加器可用于实现计数（就像在MapReduce中那样）或求和。可以用add方法将运行在集群上的任务添加到一个累加器变量中。不过这些任务无法读取变量的值。只有驱动程序才能够读取累加器的值。

下面的代码片段展示了如何使用累加器共享变量：

//
// Accumulators
//

val accum = sc.accumulator(0, "My Accumulator")

sc.parallelize(Array(1, 2, 3, 4)).foreach(x => accum += x)

accum.value

## Spark应用示例

本篇文章中所涉及的示例应用是一个简单的字数统计应用。这与学习用Hadoop进行大数据处理时的示例应用相同。我们将在一个文本文件上执行一些数据分析查询。本示例中的文本文件和数据集都很小，不过无须修改任何代码，示例中所用到的Spark查询同样可以用到大容量数据集之上。

为了让讨论尽量简单，我们将使用Spark Scala Shell。

首先让我们看一下如何在你自己的电脑上安装Spark。

**前提条件：**

*   为了让Spark能够在本机正常工作，你需要安装Java开发工具包（JDK）。这将包含在下面的第一步中。
*   同样还需要在电脑上安装Spark软件。下面的第二步将介绍如何完成这项工作。

**注：**下面这些指令都是以Windows环境为例。如果你使用不同的操作系统环境，需要相应的修改系统变量和目录路径已匹配你的环境。

**I. ****安装JDK**

1）从Oracle网站上下载JDK。推荐使用[JDK 1.7版本](http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html)。

将JDK安装到一个没有空格的目录下。对于Windows用户，需要将JDK安装到像c:\\dev这样的文件夹下，而不能安装到“c:\\Program Files”文件夹下。“c:\\Program Files”文件夹的名字中包含空格，如果软件安装到这个文件夹下会导致一些问题。

**注：****不要**在“c:\\Program Files”文件夹中安装JDK或（第二步中所描述的）Spark软件。

2）完成JDK安装后，切换至JDK 1.7目录下的”bin“文件夹，然后键入如下命令，验证JDK是否正确安装：

java -version

如果JDK安装正确，上述命令将显示Java版本。

**II. ****安装Spark****软件：**

从[Spark网站](https://spark.apache.org/downloads.html)上下载最新版本的Spark。在本文发表时，最新的Spark版本是1.2。你可以根据Hadoop的版本选择一个特定的Spark版本安装。我下载了与Hadoop 2.4或更高版本匹配的Spark，文件名是spark-1.2.0-bin-hadoop2.4.tgz。

将安装文件解压到本地文件夹中（如：c:\\dev）。

为了验证Spark安装的正确性，切换至Spark文件夹然后用如下命令启动Spark Shell。这是Windows环境下的命令。如果使用Linux或Mac OS，请相应地编辑命令以便能够在相应的平台上正确运行。

c:
cd c:\\dev\\spark-1.2.0-bin-hadoop2.4
bin\\spark-shell

如果Spark安装正确，就能够在控制台的输出中看到如下信息。

….
15/01/17 23:17:46 INFO HttpServer: Starting HTTP Server
15/01/17 23:17:46 INFO Utils: Successfully started service \'HTTP class server\' on port 58132.
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\\ \\/ _ \\/ _ `/ __/  \'_/
   /___/ .__/\\_,_/_/ /_/\\_\\   version 1.2.0
      /_/

Using Scala version 2.10.4 (Java HotSpot(TM) 64-Bit Server VM, Java 1.7.0_71)
Type in expressions to have them evaluated.
Type :help for more information.
….
15/01/17 23:17:53 INFO BlockManagerMaster: Registered BlockManager
15/01/17 23:17:53 INFO SparkILoop: Created spark context..
Spark context available as sc.

可以键入如下命令检查Spark Shell是否工作正常。

sc.version

（或）

sc.appName

完成上述步骤之后，可以键入如下命令退出Spark Shell窗口：

:quit

如果想启动Spark Python Shell，需要先在电脑上安装Python。你可以下载并安装[Anaconda](http://continuum.io/downloads)，这是一个免费的Python发行版本，其中包括了一些比较流行的科学、数学、工程和数据分析方面的Python包。

然后可以运行如下命令启动Spark Python Shell：

c:
cd c:\\dev\\spark-1.2.0-bin-hadoop2.4
bin\\pyspark

## Spark示例应用

完成Spark安装并启动后，就可以用Spark API执行数据分析查询了。

这些从文本文件中读取并处理数据的命令都很简单。我们将在这一系列文章的后续文章中向大家介绍更高级的Spark框架使用的用例。

首先让我们用Spark API运行流行的Word Count示例。如果还没有运行Spark Scala Shell，首先打开一个Scala Shell窗口。这个示例的相关命令如下所示：

import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._

val txtFile = "README.md"
val txtData = sc.textFile(txtFile)
txtData.cache()

我们可以调用cache函数将上一步生成的RDD对象保存到缓存中，在此之后Spark就不需要在每次数据查询时都重新计算。需要注意的是，cache()是一个延迟操作。在我们调用cache时，Spark并不会马上将数据存储到内存中。只有当在某个RDD上调用一个行动时，才会真正执行这个操作。

现在，我们可以调用count函数，看一下在文本文件中有多少行数据。

txtData.count()

然后，我们可以执行如下命令进行字数统计。在文本文件中统计数据会显示在每个单词的后面。

val wcData = txtData.flatMap(l => l.split(" ")).map(word => (word, 1)).reduceByKey(_ + _)

wcData.collect().foreach(println)

如果想查看更多关于如何使用Spark核心API的代码示例，请参考网站上的[Spark文档](http://spark.apache.org/docs/latest/programming-guide.html)。

## 后续计划

在后续的系列文章中，我们将从Spark SQL开始，学习更多关于Spark生态系统的其他部分。之后，我们将继续了解Spark Streaming，Spark MLlib和Spark GraphX。我们也会有机会学习像Tachyon和BlinkDB等框架。

## 小结

在本文中，我们了解了Apache Spark框架如何通过其标准API帮助完成大数据处理和分析工作。我们还对Spark和传统的MapReduce实现（如Apache Hadoop）进行了比较。Spark与Hadoop基于相同的HDFS文件存储系统，因此如果你已经在Hadoop上进行了大量投资和基础设施建设，可以一起使用Spark和MapReduce。

此外，也可以将Spark处理与Spark SQL、机器学习以及Spark Streaming结合在一起。关于这方面的内容我们将在后续的文章中介绍。

利用Spark的一些集成功能和适配器，我们可以将其他技术与Spark结合在一起。其中一个案例就是将Spark、Kafka和Apache Cassandra结合在一起，其中Kafka负责输入的流式数据，Spark完成计算，最后Cassandra NoSQL数据库用于保存计算结果数据。

不过需要牢记的是，Spark生态系统仍不成熟，在安全和与BI工具集成等领域仍然需要进一步的改进。

## 参考文献

*   [Spark主站](http://spark.apache.org/)
*   [Spark示例](http://spark.apache.org/examples.html)
*   [2014年Spark峰会](http://spark.apache.org/examples.html)[演示文稿和视频](http://spark-summit.org/2014/)
*   [Spark on Databricks website](http://databricks.com/spark)
*   [Databricks网站上的Spark栏目](http://databricks.com/spark)','/articles/2017/06/25/1498395852962.html','1','1','0','2017-06-25 21:04:13','2017-06-26 12:35:02',0.651582624535677,'1','1','','CodeMirror-Markdown'),
('1498396060717','最流行的5个前端框架对比','如今出现了大量的CSS前端框架，但真正优秀的框架只有少数几个。
本文将会比较其中五个最佳的框架。每个框架都有自己的优点和缺点，以及具体的应用领域，你可以根据自己的具体项目需求进行选择。此外，许多选项都是模块化的，允许你仅使用所需的组件，甚至可以混合使用来自不同框架的组件。
','http://images2015.cnblogs.com/blog/139239/201706/139239-20170626110421633-1603129320.png','icon-font,123,七牛,字体','Altas','1031329190@qq.com','0','1','# [最流行的5个前端框架对比](http://www.cnblogs.com/powertoolsteam/p/frameworks_compared.html)

欢迎大家持续关注[葡萄城控件技术团队博客](https://home.cnblogs.com/u/powertoolsteam/)，更多更好的原创文章尽在这里~~

如今出现了大量的CSS前端框架，但真正优秀的框架只有少数几个。

本文将会比较其中五个最佳的框架。每个框架都有自己的优点和缺点，以及具体的应用领域，你可以根据自己的具体项目需求进行选择。此外，许多选项都是模块化的，允许你仅使用所需的组件，甚至可以混合使用来自不同框架的组件。

本文依据各个框架的GitHub流行度来顺序介绍。

# Bootstrap

[Bootstrap](http://getbootstrap.com/)是目前可用框架中无可争议的领导者。其人气日益增长，你可以放心的选择这个框架，而不必担心项目会失败，因为具有广泛使用基础的框架，不太可能被抛弃。

![](http://images2015.cnblogs.com/blog/139239/201706/139239-20170626110230961-1805547738.png)

*   创作者： [Mark Otto](https://github.com/mdo) 和 [Jacob Thornton](https://github.com/fat).
*   发行： 2011
*   当前版本： 3.3.7
*   人气： GitHub上有111,000颗星
*   说明： “Bootstrap是最流行的HTML，CSS和JavaScript框架，用于在网络上开发响应式、移动的Web项目。
*   核心概念/原则： [RWD](http://en.wikipedia.org/wiki/Responsive_web_design)和移动端优先。
*   框架大小： 154 KB
*   预处理器： [Less](http://lesscss.org/)和[Sass](http://sass-lang.com/)
*   响应式布局：是
*   模块化：是
*   启动模板/布局：是
*   图标集： [Glyphicons](http://glyphicons.com/) Halflings设置
*   附加/附件：无捆绑，许多第三方插件可用。
*   独特组件： Jumbotron
*   文档资源：良好
*   自定制：基本GUI定制器。但是你需要手动输入颜色值，因为没有颜色选择器可用。
*   浏览器支持： Firefox，Chrome，Safari，IE8 +（您需要IE8的[Respond.js](https://github.com/scottjehl/Respond)）
*   许可证： [MIT](https://tldrlegal.com/license/mit-license)

## **Bootstrap****说明**

Bootstrap的广泛流行是它的优势所在。在技​​术上，它不一定比列表中的其它框架更好，但它提供了比其它四个框架更多的资源（文章和教程、第三方插件和扩展、主题构建器等）。简而言之，Bootstrap 无处不在，这是人们继续选择的主要原因。

# Foundation

[Foundation](http://foundation.zurb.com/)是排在第二名的框架。[ZURB](https://www.sitepoint.com/5-most-popular-frontend-frameworks-compared/zurb.com)这样坚实的公司一直支持着Foundation，所以这个框架有强大的基础。Foundation现已用于许多大型网站，包括Facebook，Mozilla，Ebay，Yahoo！和国家地理等。

![](http://images2015.cnblogs.com/blog/139239/201706/139239-20170626110421633-1603129320.png)

*   创作者： ZURB
*   发行： 2011
*   当前版本： 6.3.1
*   人气： GitHub上有25,400颗星
*   说明： “世界上最先进的响应式前端框架”
*   核心概念/原则： RWD，移动端优先，语义。
*   框架大小： 197.5 KB
*   预处理器： Sass
*   响应式布局：是
*   模块化：是
*   启动模板/布局：是
*   图标集： [基础图标字体](http://zurb.com/playground/foundation-icon-fonts-3)
*   额外/附加组件：是
*   独特的组件： Icon Bar, Clearing Lightbox, Flex Video, Keystrokes, Joyride, Pricing Tables
*   文档资源：良好，还有许多额外资源。
*   自定制：基本的GUI定制程序，类似于Bootstrap定制工具。
*   浏览器支持： Chrome，Firefox，Safari，IE9 +; iOS，Android，Windows Phone 7+
*   许可证：MIT

## Foundation说明

Foundation是一个真正的专业框架，提供业务支持、培训和咨询。它还提供了许多资源来帮助你更快更轻松地学习和使用该框架。

# Semantic UI

[Semantic UI](http://semantic-ui.com/)是一个语义化设计的前端开源框架。它利用自然语言原理，从而使代码更加可读和可理解。

![](http://images2015.cnblogs.com/blog/139239/201706/139239-20170626110451321-12336477.jpg)

*   创作者： [Jack Lukic](https://github.com/jlukic)
*   发行： 2013
*   当前版本： 2.2
*   人气： GitHub上有34,762颗星
*   说明： “基于自然语言原则的UI组件框架”。
*   核心概念/原则：Semantic, tag ambivalence, responsive。
*   框架大小： 806 KB
*   预处理器：少
*   响应式布局：是
*   模块化：是
*   启动模板/布局：是，并提供了一些基本的入门模板
*   图标集： Font Awesome
*   额外/附加组件：否
*   独特的部件：Divider, Flag, Rail, Reveal, Step, Advertisement, Card, Feed, Item, Statistic, Dimmer, Rating, Shape。
*   文档资源：非常好，Semantic提供了一个非常有组织的文档，另外还有[一个单独的网站](http://learnsemantic.com/)提供入门指南、自定义和创建主题。
*   自定义：没有GUI定制器，只有手动定制。
*   浏览器支持： Firefox，Chrome，Safari，IE10 +（仅IE9浏览器前缀），Android 4，Blackberry 10
*   许可证：MIT

## Semantic UI说明

Semantic是这里所讨论的所有框架中，最具创新性和全功能的框架。其框架的总体结构、类中清晰逻辑的命名约定方式和语义方面也超过了其它框架。

# Pure

[Pure](http://purecss.io/)是一种轻量级的模块化框架，采用纯CSS编写，具有可根据需要一起使用或单独使用的组件。

![](http://images2015.cnblogs.com/blog/139239/201706/139239-20170626110511836-1894616421.png)

*   创作者：雅虎
*   发行： 2013
*   当前版本： 0.6.2
*   流行度： GitHub上有16,637颗星
*   说明： “一套小而灵活的CSS模块，能够在每个Web项目中使用。”
*   核心概念/原则： [SMACSS](http://smacss.com/)，极简主义。
*   框架大小： 16 KB
*   预处理：无
*   响应式布局：是
*   模块化：是
*   启动模板/布局：是
*   图标集：无。可以改用Font Awesome。
*   额外/附加组件：无
*   独特组件：无
*   文档资源：很好
*   自定义：基本GUI皮肤生成器
*   浏览器支持：最新版本的Firefox，Chrome，Safari; IE7 +; iOS 6.x，7.x; Android 4.x
*   许可证： [Yahoo! Inc. BSD](https://github.com/yahoo/pure-site/blob/master/LICENSE.md)

## Pure说明

Pure为你的项目提供了一个干净的开始，只提供基本框架。对于不需要全功能框架但仅包含在其工作中的特定组件的人来说，pures是一个理想的选择。

# UIkit

[UIkit](http://getuikit.com/)是一个易于使用和自定义的组件的简洁集合。虽然它不像其它框架那样受欢迎，但它提供了相同的功能和质量。

![](http://images2015.cnblogs.com/blog/139239/201706/139239-20170626110529368-1215875860.png)

*   创造者： [YOOtheme](http://yootheme.com/)
*   发行： 2013
*   当前版本： 3.0.0
*   人气：GitHub GitHub上有9,422颗星
*   说明： “用于开发快速而强大的Web界面的轻量级和模块化的前端框架”。
*   核心概念/原则： RWD，移动端优先
*   框架大小： 326.9 KB（如果包含uikit-icons.min.js与SVG图标相关的功能，则为384.4 KB ）
*   预处理器：少，Sass
*   响应式布局：是
*   模块化：是
*   启动模板/布局：是
*   图标集： UIkit自带SVG图标系统和类库，其中包含越来越多的大纲图标。
*   额外/附加组件：是
*   独特的组件：Article, Flex, Cover, HTML Editor
*   文件：好
*   自定义：高级GUI定制程序仅在版本2（以前的版本）中可用
*   浏览器支持： Chrome，Firefox，Safari，IE9 +
*   许可证：MIT

## UIkit说明

UIkit成功应用在许多[WordPress主题](http://getuikit.com/showcase/index.html)中。它提供了灵活和强大的手动定制机制（以前版本的框架还提供了高级GUI定制程序）。

# 什么是最适合你的框架？

在选择框架时，可以从以下几个方面考虑：

*   所选的框架有足够的人气吗？更多的人气意味着更多的人参与项目，也意味着有更多的教程和社区文章、更多的实例和网站、更多的第三方扩展、更好的相关的Web产品可与其集成。受欢迎程度也意味着框架更具前瞻性，因为具有更大社区的框架不太可能被抛弃。
*   框架是否正在积极发展？一个好的框架需要不断地使用最新的web技术，特别是在移动端方面。
*   框架是否达到成熟？如果一个特定的框架在现实项目中还没有被使用和测试，那么将其用于你的专业项目，可能不是一个明智的选择。
*   框架是否提供了良好的文档？为了方便学习过程，总是需要良好的文档。
*   框架的特异性是什么？这里的要点是，与具有高级别特异性的框架相比，更通用的框架更容易使用。在大多数情况下，最好选择一个应用最小样式的框架，因为它更容易自定义。与重写现有的CSS规则相比，添加新的CSS规则是一个更方便有效的做法。

如果你还不确定使用哪个框架，那么可以采用混合搭配的方式。当某个特定的框架不能满足你的需求时，可以混合使用两个或多个项目的组件。

最后值得一提的是，现在Flexbox和Grid Layout在主流浏览器的最新版本中得到很好的支持，比以往任何时候都更容易构建复杂的布局。这可能会鼓励更多的开发人员放弃前端框架，从头开始编写他们自己想要的布局。','/articles/2017/06/25/1498396060717.html','1','1','0','2017-06-25 21:07:40','2017-06-26 12:30:32',0.112860015111973,'1','1','','CodeMirror-Markdown'),
('1498452231714','Kafaka简介','Kafka的存储布局非常简单。话题的每个分区对应一个逻辑日志。物理上，一个日志为相同大小的一组分段文件。每次生产者发布消息到一个分区，代理就将消息追加到最后一个段文件中。当发布的消息数量达到设定值或者经过一定的时间后，段文件真正写入磁盘中。写入完成后，消息公开给消费者。

与传统的消息系统不同，Kafka系统中存储的消息没有明确的消息Id。

消息通过日志中的逻辑偏移量来公开。这样就避免了维护配套密集寻址，用于映射消息ID到实际消息地址的随机存取索引结构的开销。消息ID是增量的，但不连续。要计算下一消息的ID，可以在其逻辑偏移的基础上加上当前消息的长度。','https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2971228854,2181429756&fm=26&gp=0.jpg','Hadoop,Kafka','Altas','1031329190@qq.com','0','4','# Apache Kafka：下一代分布式消息系统

![](http://www.infoq.com/resource/articles/apache-kafka/zh/smallimage/logo.png)

[喜欢](javascript:void(0);) _|_ 作者 [Abhishek Sharma](http://www.infoq.com/cn/profile/Abhishek-Sharma) ，译者 **[梅雪松](http://www.infoq.com/cn/profile/%E6%A2%85%E9%9B%AA%E6%9D%BE) **发布于 2014年6月12日. 估计阅读时间: 2 分钟 _|_ 顶尖技术领导者的管理实战经验分享，尽在[GTLC](http://gtlc.geekbang.org/?utm_source=infoq&utm_medium=notices&utm_campaign=0612)![7 讨论](http://www.infoq.com/cn/articles/apache-kafka/#theCommentsSection)

*   [分享到：](http://www.infoq.com/cn/articles/apache-kafka/#)[微博](http://www.infoq.com/cn/articles/apache-kafka/# "分享到微博")[微信](http://www.infoq.com/cn/articles/apache-kafka/# "分享到微信")[Facebook](http://www.infoq.com/cn/articles/apache-kafka/# "分享到Facebook")[Twitter](http://www.infoq.com/cn/articles/apache-kafka/# "分享到Twitter")[有道云笔记](http://www.infoq.com/cn/articles/apache-kafka/# "分享到有道云笔记")[邮件分享](http://www.infoq.com/cn/articles/apache-kafka/# "分享到邮件分享")

*   [稍后阅读](http://www.infoq.com/cn/articles/apache-kafka/)
*   [我的阅读清单](http://www.infoq.com/cn/showbookmarks.action)

## 简介

[Apache Kafka](http://kafka.apache.org/)是分布式发布-订阅消息系统。它最初由LinkedIn公司开发，之后成为Apache项目的一部分。Kafka是一种快速、可扩展的、设计内在就是分布式的，分区的和可复制的提交日志服务。

Apache Kafka与传统消息系统相比，有以下不同：

*   它被设计为一个分布式系统，易于向外扩展；
*   它同时为发布和订阅提供高吞吐量；
*   它支持多订阅者，当失败时能自动平衡消费者；
*   它将消息持久化到磁盘，因此可用于批量消费，例如[ETL](http://en.wikipedia.org/wiki/Extract,_transform,_load)，以及实时应用程序。

本文我将重点介绍Apache Kafka的架构、特性和特点，帮助我们理解Kafka为何比传统消息服务更好。

相关厂商内容

### [一手实践，摩拜产品研发负责人谈谈空降团队那些事](http://www.infoq.com/infoq/url.action?i=16360&t=f)

### [业务与产品面面观，Mobvista CTO谈谈技术与业务融合之道](http://www.infoq.com/infoq/url.action?i=16361&t=f)

### [技术领导者，我是如何打造自己的影响力？](http://www.infoq.com/infoq/url.action?i=16362&t=f)

### [如何抓住技术浪潮变革的红利](http://www.infoq.com/infoq/url.action?i=16363&t=f)

### [数字化经济下技术领导者的洞察创新之路](http://www.infoq.com/infoq/url.action?i=16364&t=f)

相关赞助商

[![](http://cdn3.infoqstatic.com/statics_s1_20170620-0701/resource/sponsorship/featuredcategory/1390/GTLC-BOX-175x60.jpg)](http://www.infoq.com/infoq/url.action?i=16365&t=f)

**全球技术领导力峰会2017，6月30日-7月1日，上海·宝华万豪酒店，[精彩内容抢先看](http://www.infoq.com/infoq/url.action?i=16261&t=f)**

我将比较Kafak和传统消息服务[RabbitMQ](https://www.rabbitmq.com/)、Apache [ActiveMQ](http://activemq.apache.org/)的特点，讨论一些Kafka优于传统消息服务的场景。在最后一节，我们将探讨一个进行中的示例应用，展示Kafka作为消息服务器的用途。这个示例应用的完整源代码在[GitHub](https://github.com/abhioncbr/Kafka-Message-Server)。关于它的详细讨论在本文的最后一节。

## 架构

首先，我介绍一下Kafka的基本概念。它的架构包括以下组件：

*   **话题（Topic）**是特定类型的**消息**流。**消息**是字节的有效负载（Payload），话题是消息的分类名或种子（Feed）名。
*   **生产者（Producer）**是能够发布消息到话题的任何对象。
*   已发布的消息保存在一组服务器中，它们被称为**代理（Broker）或Kafka集群**。
*   **消费者**可以订阅一个或多个话题，并从Broker拉数据，从而消费这些已发布的消息。

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609010.png)

图1：Kafka生产者、消费者和代理环境

生产者可以选择自己喜欢的序列化方法对消息内容编码。为了提高效率，生产者可以在一个发布请求中发送一组消息。下面的代码演示了如何创建生产者并发送消息。

**生产者示例代码：**

producer = new Producer(…); 
message = new Message(“test message str”.getBytes()); 
set = new MessageSet(message); 
producer.send(“topic1”, set); 

为了订阅话题，消费者首先为话题创建一个或多个消息流。发布到该话题的消息将被均衡地分发到这些流。每个消息流为不断产生的消息提供了迭代接口。然后消费者迭代流中的每一条消息，处理消息的有效负载。与传统迭代器不同，消息流迭代器永不停止。如果当前没有消息，迭代器将阻塞，直到有新的消息发布到该话题。Kafka同时支持点到点分发模型（Point-to-point delivery model），即多个消费者共同消费队列中某个消息的单个副本，以及发布-订阅模型（Publish-subscribe model），即多个消费者接收自己的消息副本。下面的代码演示了消费者如何使用消息。

**消费者示例代码：**

streams[] = Consumer.createMessageStreams(“topic1”, 1) 
for (message : streams[0]) { 
bytes = message.payload(); 
// do something with the bytes 
} 

Kafka的整体架构如图2所示。因为Kafka内在就是分布式的，一个Kafka集群通常包括多个代理。为了均衡负载，将话题分成多个分区，每个代理存储一或多个分区。多个生产者和消费者能够同时生产和获取消息。

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609011.png)

图2：Kafka架构

## Kafka存储

Kafka的存储布局非常简单。话题的每个分区对应一个逻辑日志。物理上，一个日志为相同大小的一组分段文件。每次生产者发布消息到一个分区，代理就将消息追加到最后一个段文件中。当发布的消息数量达到设定值或者经过一定的时间后，段文件真正写入磁盘中。写入完成后，消息公开给消费者。

与传统的消息系统不同，Kafka系统中存储的消息没有明确的消息Id。

消息通过日志中的逻辑偏移量来公开。这样就避免了维护配套密集寻址，用于映射消息ID到实际消息地址的随机存取索引结构的开销。消息ID是增量的，但不连续。要计算下一消息的ID，可以在其逻辑偏移的基础上加上当前消息的长度。

消费者始终从特定分区顺序地获取消息，如果消费者知道特定消息的偏移量，也就说明消费者已经消费了之前的所有消息。消费者向代理发出异步拉请求，准备字节缓冲区用于消费。每个异步拉请求都包含要消费的消息偏移量。Kafka利用[sendfile API](http://man7.org/linux/man-pages/man2/sendfile.2.html)高效地从代理的日志段文件中分发字节给消费者。

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609012.png)

图3：Kafka存储架构

## Kafka代理

与其它消息系统不同，Kafka代理是无状态的。这意味着消费者必须维护已消费的状态信息。这些信息由消费者自己维护，代理完全不管。这种设计非常微妙，它本身包含了创新。

*   从代理删除消息变得很棘手，因为代理并不知道消费者是否已经使用了该消息。Kafka创新性地解决了这个问题，它将一个简单的基于时间的SLA应用于保留策略。当消息在代理中超过一定时间后，将会被自动删除。
*   这种创新设计有很大的好处，消费者可以故意倒回到老的偏移量再次消费数据。这违反了队列的常见约定，但被证明是许多消费者的基本特征。

## ZooKeeper与Kafka

考虑一下有多个服务器的分布式系统，每台服务器都负责保存数据，在数据上执行操作。这样的潜在例子包括分布式搜索引擎、分布式构建系统或者已知的系统如[Apache Hadoop](http://hadoop.apache.org/)。所有这些分布式系统的一个常见问题是，你如何在任一时间点确定哪些服务器活着并且在工作中。最重要的是，当面对这些分布式计算的难题，例如网络失败、带宽限制、可变延迟连接、安全问题以及任何网络环境，甚至跨多个数据中心时可能发生的错误时，你如何可靠地做这些事。这些正是[Apache ZooKeeper](http://zookeeper.apache.org/)所关注的问题，它是一个快速、高可用、容错、分布式的协调服务。你可以使用ZooKeeper构建可靠的、分布式的数据结构，用于群组成员、领导人选举、协同工作流和配置服务，以及广义的分布式数据结构如锁、队列、屏障（Barrier）和锁存器（Latch）。许多知名且成功的项目依赖于ZooKeeper，其中包括HBase、Hadoop 2.0、Solr Cloud、Neo4J、[Apache Blur](http://incubator.apache.org/blur/)（Incubating）和Accumulo。

ZooKeeper是一个分布式的、分层级的文件系统，能促进客户端间的松耦合，并提供最终一致的，类似于传统文件系统中文件和目录的Znode视图。它提供了基本的操作，例如创建、删除和检查Znode是否存在。它提供了事件驱动模型，客户端能观察特定Znode的变化，例如现有Znode增加了一个新的子节点。ZooKeeper运行多个ZooKeeper服务器，称为**Ensemble**，以获得高可用性。每个服务器都持有分布式文件系统的内存复本，为客户端的读取请求提供服务。

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609013.png)

图4：ZooKeeper Ensemble架构

上图4展示了典型的ZooKeeper ensemble，一台服务器作为Leader，其它作为Follower。当Ensemble启动时，先选出Leader，然后所有Follower复制Leader的状态。所有写请求都通过Leader路由，变更会广播给所有Follower。变更广播被称为**原子广播**。

**Kafka中ZooKeeper的用途**：正如ZooKeeper用于分布式系统的协调和促进，Kafka使用ZooKeeper也是基于相同的原因。ZooKeeper用于管理、协调Kafka代理。每个Kafka代理都通过ZooKeeper协调其它Kafka代理。当Kafka系统中新增了代理或者某个代理故障失效时，ZooKeeper服务将通知生产者和消费者。生产者和消费者据此开始与其它代理协调工作。Kafka整体系统架构如图5所示。

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609014.png)

图5：Kafka分布式系统的总体架构

## Apache Kafka对比其它消息服务

让我们了解一下使用Apache Kafka的两个项目，以对比其它消息服务。这两个项目分别是LinkedIn和我的项目：

### LinkedIn的研究

LinkedIn团队做了个[实验研究](http://research.microsoft.com/en-us/um/people/srikanth/netdb11/netdb11papers/netdb11-final12.pdf)，对比Kafka与Apache ActiveMQ V5.4和RabbitMQ V2.4的性能。他们使用ActiveMQ默认的消息持久化库[Kahadb](http://activemq.apache.org/kahadb.html)。LinkedIn在两台Linux机器上运行他们的实验，每台机器的配置为8核2GHz、16GB内存，6个磁盘使用RAID10。两台机器通过1GB网络连接。一台机器作为代理，另一台作为生产者或者消费者。

### 生产者测试

LinkedIn团队在所有系统中配置代理，异步将消息刷入其持久化库。对每个系统，运行一个生产者，总共发布1000万条消息，每条消息200字节。Kafka生产者以1和50批量方式发送消息。ActiveMQ和RabbitMQ似乎没有简单的办法来批量发送消息，LinkedIn假定它的批量值为1。结果如下面的图6所示：

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609015.png)

图6：LinkedIn的生产者性能实验结果

**Kafka性能要好很多的主要原因包括：**

*   Kafka不等待代理的确认，以代理能处理的最快速度发送消息。
*   Kafka有更高效的存储格式。平均而言，Kafka每条消息有9字节的开销，而ActiveMQ有144字节。其原因是JMS所需的沉重消息头，以及维护各种索引结构的开销。LinkedIn注意到ActiveMQ一个最忙的线程大部分时间都在存取B-Tree以维护消息元数据和状态。

### 消费者测试

为了做消费者测试，LinkedIn使用一个消费者获取总共1000万条消息。LinkedIn让所有系统每次拉请求都预获取大约相同数量的数据，最多1000条消息或者200KB。对ActiveMQ和RabbitMQ，LinkedIn设置消费者确认模型为自动。结果如图7所示。

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609016.png)

图7：LinkedIn的消费者性能实验结果

**Kafka性能要好很多的主要原因包括：**

*   Kafka有更高效的存储格式；在Kafka中，从代理传输到消费者的字节更少。
*   ActiveMQ和RabbitMQ两个容器中的代理必须维护每个消息的传输状态。LinkedIn团队注意到其中一个ActiveMQ线程在测试过程中，一直在将KahaDB页写入磁盘。与此相反，Kafka代理没有磁盘写入动作。最后，Kafka通过使用sendfile API降低了传输开销。

目前，我正在工作的一个项目提供实时服务，从消息中快速并准确地提取场外交易市场（OTC）定价内容。这是一个非常重要的项目，处理近25种资产类别的财务信息，包括债券、贷款和ABS（资产担保证券）。项目的原始信息来源涵盖了欧洲、北美、加拿大和拉丁美洲的主要金融市场领域。下面是这个项目的一些统计，说明了解决方案中包括高效的分布式消息服务是多么重要：

*   每天处理的消息数量超过**1,300,000**；
*   每天解析的OTC价格数量超过**12,000,000**；
*   支持超过25种资产类别；
*   每天解析的独立票据超过**70,000**。

消息包含PDF、Word文档、Excel及其它格式。OTC定价也可能要从附件中提取。

由于传统消息服务器的性能限制，当处理大附件时，消息队列变得非常大，我们的项目面临严重的问题，JMSqueue一天需要启动2-3次。重启JMS队列可能丢失队列中的全部消息。项目需要一个框架，不论解析器（消费者）的行为如何，都能够保住消息。Kafka的特性非常适用于我们项目的需求。

当前项目具备的特性：

1.  使用Fetchmail获取远程邮件消息，然后由Procmail过滤并处理，例如单独分发基于附件的消息。
2.  每条消息从单独的文件获取，该文件被处理（读取和删除）为一条消息插入到消息服务器中。
3.  消息内容从消息服务队列中获取，用于解析和提取信息。

## 示例应用

这个示例应用是基于我在项目中使用的原始应用修改后的版本。我已经删除日志的使用和多线程特性，使示例应用的工件尽量简单。示例应用的目的是展示如何使用Kafka生产者和消费者的API。应用包括一个[生产者示例](https://github.com/abhioncbr/Kafka-Message-Server/blob/master/Kafka-Message-Server-Example/src/main/java/com/kafka/message/server/example/core/KafkaMailProducer.java)（简单的生产者代码，演示Kafka生产者API用法并发布特定话题的消息），[消费者示例](https://github.com/abhioncbr/Kafka-Message-Server/blob/master/Kafka-Message-Server-Example/src/main/java/com/kafka/message/server/example/core/KafkaMailConsumer.java)（简单的消费者代码，用于演示Kafka消费者API的用法）以及[消息内容生成](https://github.com/abhioncbr/Kafka-Message-Server/blob/master/Kafka-Message-Server-Example/src/main/java/com/kafka/message/server/example/other/launch/CreateFile.java)API（在特定路径下生成消息内容到文件的API）。下图展示了各组件以及它们与系统中其它组件间的关系。

![](http://cdn.infoqstatic.com/statics_s1_20170620-0701/resource/articles/apache-kafka/zh/resources/0609017.png)

图8：示例应用组件架构

示例应用的结构与Kafka源代码中的例子程序相似。应用的源代码包含Java源程序文件夹‘src’和\'config\'文件夹，后者包括几个配置文件和一些Shell脚本，用于执行示例应用。要运行示例应用，请参照[ReadMe.md](https://github.com/abhioncbr/Kafka-Message-Server/blob/master/README.md)文件或GitHub网站[Wiki页面](https://github.com/abhioncbr/Kafka-Message-Server/wiki/How-to-run-sample-application)的说明。

程序构建可以使用[Apache Maven](http://maven.apache.org/)，定制也很容易。如果有人想修改或定制示例应用的代码，有几个Kafka构建脚本已经过修改，可用于重新构建示例应用代码。关于如何定制示例应用的详细描述已经放在项目GitHub的[Wiki页面](https://github.com/abhioncbr/Kafka-Message-Server/wiki/How-to-customize-sample-application)。

现在，让我们看看示例应用的核心工件。

[Kafka生产者代码示例](https://github.com/abhioncbr/Kafka-Message-Server/blob/master/Kafka-Message-Server-Example/src/main/java/com/kafka/message/server/example/core/KafkaMailProducer.java)

/** 
 * Instantiates a new Kafka producer. 
 * 
 * @param topic the topic 
 * @param directoryPath the directory path 
 */ 
public KafkaMailProducer(String topic, String directoryPath) { 
       props.put("serializer.class", "kafka.serializer.StringEncoder"); 
       props.put("metadata.broker.list", "localhost:9092"); 
       producer = new kafka.javaapi.producer.Producer(new ProducerConfig(props)); 
       this.topic = topic; 
       this.directoryPath = directoryPath; 
} 

public void run() { 
      Path dir = Paths.get(directoryPath); 
      try { 
           new WatchDir(dir).start(); 
           new ReadDir(dir).start(); 
      } catch (IOException e) { 
           e.printStackTrace(); 
      } 
} 

上面的代码片断展示了Kafka生产者API的基本用法，例如设置生产者的属性，包括发布哪个话题的消息，可以使用哪个序列化类以及代理的相关信息。这个类的基本功能是从邮件目录读取邮件消息文件，然后作为消息发布到Kafka代理。目录通过java.nio.WatchService类监视，一旦新的邮件消息Dump到该目录，就会被立即读取并作为消息发布到Kafka代理。

[Kafka消费者代码示例](https://github.com/abhioncbr/Kafka-Message-Server/blob/master/Kafka-Message-Server-Example/src/main/java/com/kafka/message/server/example/core/KafkaMailConsumer.java)

public KafkaMailConsumer(String topic) { 
       consumer = 
Kafka.consumer.Consumer.createJavaConsumerConnector(createConsumerConfig()); 
       this.topic = topic; 
} 

/** 
 * Creates the consumer config. 
 * 
 * @return the consumer config 
 */ 
private static ConsumerConfig createConsumerConfig() { 
      Properties props = new Properties(); 
      props.put("zookeeper.connect", KafkaMailProperties.zkConnect); 
      props.put("group.id", KafkaMailProperties.groupId); 
      props.put("zookeeper.session.timeout.ms", "400"); 
      props.put("zookeeper.sync.time.ms", "200"); 
      props.put("auto.commit.interval.ms", "1000"); 
      return new ConsumerConfig(props); 
} 

public void run() { 
      Map topicCountMap = new HashMap(); 
      topicCountMap.put(topic, new Integer(1)); 
      Map>> consumerMap = consumer.createMessageStreams(topicCountMap); 
      KafkaStream stream = consumerMap.get(topic).get(0); 
      ConsumerIterator it = stream.iterator();
      while (it.hasNext()) 
      System.out.println(new String(it.next().message())); 
}

上面的代码演示了基本的消费者API。正如我们前面提到的，消费者需要设置消费的消息流。在Run方法中，我们进行了设置，并在控制台打印收到的消息。在我的项目中，我们将其输入到解析系统以提取OTC定价。

在当前的质量保证系统中，我们使用Kafka作为消息服务器用于概念验证（Proof of Concept，POC）项目，它的整体性能优于JMS消息服务。其中一个我们感到非常兴奋的特性是消息的再消费（re-consumption），这让我们的解析系统可以按照业务需求重新解析某些消息。基于Kafka这些很好的效果，我们正计划使用它，而不是用Nagios系统，去做日志聚合与分析。

## 总结

Kafka是一种处理大量数据的新型系统。Kafka基于拉的消费模型让消费者以自己的速度处理消息。如果处理消息时出现了异常，消费者始终可以选择再消费该消息。','/kafka_1','1','1','0','2017-06-26 12:44:26','2017-06-26 12:44:26',0.0224949594282322,'1','1','','CodeMirror-Markdown'),
('1498452735593','Apache Spark Streaming','Spark是一个类似于MapReduce的分布式计算框架，其核心是弹性分布式数据集，提供了比MapReduce更丰富的模型，可以在快速在内存中对数据集进行多次迭代，以支持复杂的数据挖掘算法和图形计算算法。Spark Streaming是一种构建在Spark上的实时计算框架，它扩展了Spark处理大规模流式数据的能力。','http://www.36dsj.com/wp-content/uploads/2015/10/1155-600x312.jpg','SparkStreaming,Spark','Altas','1031329190@qq.com','0','4','# [Spark Streaming实时计算框架介绍](http://www.cnblogs.com/shenh062326/p/3530092.html)

随着大数据的发展，人们对大数据的处理要求也越来越高，原有的批处理框架MapReduce适合离线计算，却无法满足实时性要求较高的业务，如实时推荐、用户行为分析等。 Spark Streaming是建立在Spark上的实时计算框架，通过它提供的丰富的API、基于内存的高速执行引擎，用户可以结合流式、批处理和交互试查询应用。本文将详细介绍Spark Streaming实时计算框架的原理与特点、适用场景。

## Spark Streaming实时计算框架

    Spark是一个类似于MapReduce的分布式计算框架，其核心是弹性分布式数据集，提供了比MapReduce更丰富的模型，可以在快速在内存中对数据集进行多次迭代，以支持复杂的数据挖掘算法和图形计算算法。Spark Streaming是一种构建在Spark上的实时计算框架，它扩展了Spark处理大规模流式数据的能力。

Spark Streaming的优势在于：

*   能运行在100+的结点上，并达到秒级延迟。

*   使用基于内存的Spark作为执行引擎，具有高效和容错的特性。

*   能集成Spark的批处理和交互查询。

*   为实现复杂的算法提供和批处理类似的简单接口。

基于云梯Spark on Yarn的Spark Streaming总体架构如图1所示。其中Spark on Yarn的启动流程我的另外一篇文章（《程序员》2013年11月期刊《深入剖析阿里巴巴云梯Yarn集群》）有详细描述，这里不再赘述。Spark on Yarn启动后，由Spark AppMaster把Receiver作为一个Task提交给某一个Spark Executor；Receive启动后输入数据，生成数据块，然后通知Spark AppMaster；Spark AppMaster会根据数据块生成相应的Job，并把Job的Task提交给空闲Spark Executor 执行。图中蓝色的粗箭头显示被处理的数据流，输入数据流可以是磁盘、网络和HDFS等，输出可以是HDFS，数据库等。

![](http://images.cnitblog.com/blog/287057/201401/221719130226.jpg)

图1 云梯Spark Streaming总体架构

Spark Streaming的基本原理是将输入数据流以时间片（秒级）为单位进行拆分，然后以类似批处理的方式处理每个时间片数据，其基本原理如图2所示。

![](http://images.cnitblog.com/blog/287057/201401/221719138823.jpg)

图2 Spark Streaming基本原理图

首先，Spark Streaming把实时输入数据流以时间片Δt （如1秒）为单位切分成块。Spark Streaming会把每块数据作为一个RDD，并使用RDD操作处理每一小块数据。每个块都会生成一个Spark Job处理，最终结果也返回多块。

下面介绍Spark Streaming内部实现原理。

使用Spark Streaming编写的程序与编写Spark程序非常相似，在Spark程序中，主要通过操作RDD（Resilient Distributed Datasets弹性分布式数据集）提供的接口，如map、reduce、filter等，实现数据的批处理。而在Spark Streaming中，则通过操作DStream（表示数据流的RDD序列）提供的接口，这些接口和RDD提供的接口类似。图3和图4展示了由Spark Streaming程序到Spark jobs的转换图。

![](http://images.cnitblog.com/blog/287057/201401/221719142572.jpg)

图3 Spark Streaming程序转换为DStream Graph

![](http://images.cnitblog.com/blog/287057/201401/221719147728.jpg)

图4 DStream Graph转换为Spark jobs

在图3中，Spark Streaming把程序中对DStream的操作转换为DStream Graph，图4中，对于每个时间片，DStream Graph都会产生一个RDD Graph；针对每个输出操作（如print、foreach等），Spark Streaming都会创建一个Spark action；对于每个Spark action，Spark Streaming都会产生一个相应的Spark job，并交给JobManager。JobManager中维护着一个Jobs队列, Spark job存储在这个队列中，JobManager把Spark job提交给Spark Scheduler，Spark Scheduler负责调度Task到相应的Spark Executor上执行。

Spark Streaming的另一大优势在于其容错性，RDD会记住创建自己的操作，每一批输入数据都会在内存中备份，如果由于某个结点故障导致该结点上的数据丢失，这时可以通过备份的数据在其它结点上重算得到最终的结果。

正如Spark Streaming最初的目标一样，它通过丰富的API和基于内存的高速计算引擎让用户可以结合流式处理，批处理和交互查询等应用。因此Spark Streaming适合一些需要历史数据和实时数据结合分析的应用场合。当然，对于实时性要求不是特别高的应用也能完全胜任。另外通过RDD的数据重用机制可以得到更高效的容错处理。','/sparkstreaming','1','1','0','2017-06-26 12:52:15','2017-06-26 12:52:15',0.346912493115111,'1','1','','CodeMirror-Markdown'),
('1498829081295','13213','123123123','http://os36ky6gs.bkt.clouddn.com/65dc39577aa7411d95848cd772fe34d4.png','Hadoop,Flink,31231313','Altas','1031329190@qq.com','0','2','1231放21放从','/articles/2017/06/30/1498829081295.html','1','1','0','2017-06-30 21:24:41','2017-06-30 21:24:41',0.642260972189477,'1','1','','CodeMirror-Markdown');
DROP TABLE IF EXISTS  `b3_solo_category`;
CREATE TABLE `b3_solo_category` (
  `oId` varchar(19) NOT NULL,
  `categoryTitle` varchar(64) NOT NULL,
  `categoryURI` varchar(32) NOT NULL,
  `categoryDescription` text NOT NULL,
  `categoryOrder` int(11) NOT NULL,
  `categoryTagCnt` int(11) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_category`(`oId`,`categoryTitle`,`categoryURI`,`categoryDescription`,`categoryOrder`,`categoryTagCnt`) values
('1498276684080','Spark','Spark','Spark相关系列笔记，教程。','0','2'),
('1498276696861','Hadoop','Hadoop','','1','3'),
('1498300495682','下载','下载','资源列表','2','1'),
('1498484564505','Java','Java','java系列笔记，教程。','3','2'),
('1498485195929','ML/DL','MLDL','机器学习，深度学习','5','4'),
('1498487870403','此时此刻','此时此刻','','6','2');
DROP TABLE IF EXISTS  `b3_solo_category_tag`;
CREATE TABLE `b3_solo_category_tag` (
  `oId` varchar(19) NOT NULL,
  `category_oId` varchar(19) NOT NULL,
  `tag_oId` varchar(19) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_category_tag`(`oId`,`category_oId`,`tag_oId`) values
('1498276696919','1498276696861','1498234648927'),
('1498276696975','1498276696861','1498234648759'),
('1498276697028','1498276696861','1498234648815'),
('1498300495736','1498300495682','1498300488463'),
('1498484564569','1498484564505','1498285247560'),
('1498484564631','1498484564505','1498285247509'),
('1498484604968','1498276684080','1498269909231'),
('1498484605021','1498276684080','1498269909180'),
('1498485195982','1498485195929','1498452231766'),
('1498485196045','1498485195929','1498230119874'),
('1498485196107','1498485195929','1498234648927'),
('1498485196170','1498485195929','1498375054860'),
('1498487870479','1498487870403','1498452231766'),
('1498487870541','1498487870403','1498452231843');
DROP TABLE IF EXISTS  `b3_solo_comment`;
CREATE TABLE `b3_solo_comment` (
  `oId` varchar(255) NOT NULL,
  `commentContent` text NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentName` varchar(50) NOT NULL,
  `commentOnId` varchar(255) NOT NULL,
  `commentOnType` varchar(20) NOT NULL,
  `commentSharpURL` varchar(255) NOT NULL,
  `commentThumbnailURL` text NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `commentOriginalCommentId` varchar(255) DEFAULT NULL,
  `commentOriginalCommentName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_comment`(`oId`,`commentContent`,`commentDate`,`commentEmail`,`commentName`,`commentOnId`,`commentOnType`,`commentSharpURL`,`commentThumbnailURL`,`commentURL`,`commentOriginalCommentId`,`commentOriginalCommentName`) values
('1498230120114','写博客需要坚持，相信积累后必然会有收获，我们一起努力加油 :smile:  ','2017-06-23 23:01:59','dl88250@gmail.com','Daniel','1498230119818','article','/hello-soloQQ#1498230120114','https://secure.gravatar.com/avatar/59a5e8209c780307dbe9c9ba728073f5??s=60&r=G','https://hacpai.com/member/88250','',''),
('1498234244415','<p>:triumph: :sob: :sob:</p>','2017-06-24 00:10:44','1031329190@qq.com','rzx','1498233433352','page','http://localhost:8080/category/Hadoop#1498234244415','https://secure.gravatar.com/avatar/8bcf2d2e368bb876935f6ad7c4af2d3e?s=128','http://localhost:8080','',''),
('1498234247143','<p>:broken_heart: :scream: :eyes:</p>','2017-06-24 00:10:47','1031329190@qq.com','rzx','1498233433352','page','http://localhost:8080/category/Hadoop#1498234247143','https://secure.gravatar.com/avatar/8bcf2d2e368bb876935f6ad7c4af2d3e?s=128','http://localhost:8080','',''),
('1498234250516','<p>:eyes: :stuck_out_tongue_winking_eye: :joy:</p>','2017-06-24 00:10:50','1031329190@qq.com','rzx','1498233433352','page','http://localhost:8080/category/Hadoop#1498234250516','https://secure.gravatar.com/avatar/8bcf2d2e368bb876935f6ad7c4af2d3e?s=128','http://localhost:8080','',''),
('1498272667561','<p>:sob: :sob: :cold_sweat:</p>','2017-06-24 10:51:07','1031329190@qq.com','rzx','1498272377517','article','/articles/2017/06/24/1498272377517.html#1498272667561','https://secure.gravatar.com/avatar/8bcf2d2e368bb876935f6ad7c4af2d3e?s=128','http://localhost:8080','',''),
('1498272672980','<p>:heart: :scream: :joy: :smile: :smile:</p>','2017-06-24 10:51:12','1031329190@qq.com','rzx','1498272377517','article','/articles/2017/06/24/1498272377517.html#1498272672980','https://secure.gravatar.com/avatar/8bcf2d2e368bb876935f6ad7c4af2d3e?s=128','http://localhost:8080','',''),
('1498285312108','<p>12313121312313131312:heart: :broken_heart: :broken_heart:</p>','2017-06-24 14:21:52','1031329190@qq.com','rzx','1498285247458','article','/articles/2017/06/24/1498285247458.html#1498285312108','https://secure.gravatar.com/avatar/8bcf2d2e368bb876935f6ad7c4af2d3e?s=128','http://localhost:8080','','');
DROP TABLE IF EXISTS  `b3_solo_link`;
CREATE TABLE `b3_solo_link` (
  `oId` varchar(255) NOT NULL,
  `linkAddress` varchar(255) NOT NULL,
  `linkDescription` varchar(255) NOT NULL,
  `linkOrder` int(11) NOT NULL,
  `linkTitle` varchar(255) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_link`(`oId`,`linkAddress`,`linkDescription`,`linkOrder`,`linkTitle`) values
('1498230119762','https://hacpai.com','黑客与画家的社区','0','黑客派');
DROP TABLE IF EXISTS  `b3_solo_option`;
CREATE TABLE `b3_solo_option` (
  `oId` varchar(64) NOT NULL,
  `optionValue` text NOT NULL,
  `optionCategory` varchar(100) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_option`(`oId`,`optionValue`,`optionCategory`) values
('adminEmail','1031329190@qq.com','preference'),
('allowRegister','false','preference'),
('allowVisitDraftViaPermalink','false','preference'),
('articleListDisplayCount','5','preference'),
('articleListPaginationWindowSize','10','preference'),
('articleListStyle','titleAndAbstract','preference'),
('blogSubtitle','谦谦君子，温润如玉','preference'),
('blogTitle','Atlas♥','preference'),
('commentable','true','preference'),
('editorType','CodeMirror-Markdown','preference'),
('enableArticleUpdateHint','true','preference'),
('externalRelevantArticlesDisplayCount','5','preference'),
('feedOutputCnt','10','preference'),
('feedOutputMode','abstract','preference'),
('footerContent','<i class="icon-star"></i>','preference'),
('htmlHead','','preference'),
('keyOfSolo','1498230119634','preference'),
('localeString','zh_CN','preference'),
('metaDescription','An open source blog with Java. Java 开源博客,spark，hadoop,大数据，机器学习，','preference'),
('metaKeywords','Java,Java 博客,开源,大数据，Spark,Hadoop,IT资源','preference'),
('mostCommentArticleDisplayCount','8','preference'),
('mostUsedTagDisplayCount','20','preference'),
('mostViewArticleDisplayCount','8','preference'),
('noticeBoard','Open Source, Open Mind, <br/>Open Sight, Open Future!','preference'),
('qiniuAccessKey','WLyyecsxfOjENkqa7envmLQpmDpbd3aiNnZJ7mXL','qiniu'),
('qiniuBucket','rzx2','qiniu'),
('qiniuDomain','os36ky6gs.bkt.clouddn.com/','qiniu'),
('qiniuSecretKey','yYhrh48JYANcZy1uaoLGr0ORj1jmPijXzyL6sGnU','qiniu'),
('randomArticlesDisplayCount','5','preference'),
('recentArticleDisplayCount','','preference'),
('recentCommentDisplayCount','10','preference'),
('relevantArticlesDisplayCount','5','preference'),
('replyNotiTplBody','Your comment on post[<a href=\'${postLink}\'>${postTitle}</a>] received an reply: <p>${replier}: <span><a href=\'${replyURL}\'>${replyContent}</a></span></p>','preference'),
('replyNotiTplSubject','${blogTitle}: New reply of your comment','preference'),
('signs','[{"signHTML":"","oId":0},{"signHTML":"<div class = \\"Qm\\">\\n   ⚠本博客只适用于研究学习为目的，大多为学习笔记，如有错误欢迎指正,如有误导概不负责。<br/>\\n   ⚠如果这篇文章对你有一点点的帮助，您可以选择右上角打赏哦！欢迎持续关注！谢谢！\\n<\\/div>","oId":1},{"signHTML":"","oId":2},{"signHTML":"","oId":3}]','preference'),
('skinDirName','9IPHP','preference'),
('skinName','9IPHP','preference'),
('skins','[{"skinName":"Mobile","skinDirName":"mobile"},{"skinName":"9IPHP","skinDirName":"9IPHP"}]','preference'),
('timeZoneId','Asia/Shanghai','preference'),
('version','2.1.0','preference');
DROP TABLE IF EXISTS  `b3_solo_page`;
CREATE TABLE `b3_solo_page` (
  `oId` varchar(255) NOT NULL,
  `pageCommentCount` int(11) NOT NULL,
  `pageContent` mediumtext NOT NULL,
  `pageOrder` int(11) NOT NULL,
  `pagePermalink` varchar(255) NOT NULL,
  `pageTitle` varchar(255) NOT NULL,
  `pageCommentable` char(1) NOT NULL,
  `pageType` varchar(10) NOT NULL,
  `pageOpenTarget` varchar(255) NOT NULL,
  `pageEditorType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_page`(`oId`,`pageCommentCount`,`pageContent`,`pageOrder`,`pagePermalink`,`pageTitle`,`pageCommentable`,`pageType`,`pageOpenTarget`,`pageEditorType`) values
('1498233433352','3','','1','http://localhost:8080/category/Hadoop','<i class="icon-fire"></i>Hadoop','1','link','_self','CodeMirror-Markdown'),
('1498292561099','0','','4','http://localhost:8080/category/下载','<i class="icon-cloud-download"></i>下载','1','link','_self','CodeMirror-Markdown'),
('1498483620132','0','','0','http://localhost:8080/category/Java','<i class="icon-coffee "></i>Java','1','link','_self','CodeMirror-Markdown'),
('1498483961003','0','','2','http://localhost:8080/category/Spark','<i class="icon-asterisk"></i>Spark','1','link','_self','CodeMirror-Markdown'),
('1498484161265','0','','3','http://localhost:8080/category/MLDL','<i class="icon-globe"></i>ML/DL','1','link','_self','CodeMirror-Markdown'),
('1498484264001','0','','5','http://localhost:8080/category/此时此刻','<i class="icon-heart-empty"></i>此时此刻','1','link','_self','CodeMirror-Markdown');
DROP TABLE IF EXISTS  `b3_solo_plugin`;
CREATE TABLE `b3_solo_plugin` (
  `oId` varchar(255) NOT NULL,
  `author` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `version` varchar(10) NOT NULL,
  `setting` text,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_plugin`(`oId`,`author`,`name`,`status`,`version`,`setting`) values
('B3log Broadcast_0.0.1','<a href="http://88250.b3log.org">88250</a> & <a href="http://vanessa.b3log.org">Vanessa</a>','B3log Broadcast','ENABLED','0.0.1','{}'),
('Facybox_0.0.1','<a href="http://88250.b3log.org">88250</a>','Facybox','ENABLED','0.0.1','{}'),
('Symphony Interest_0.0.1','<a href="http://88250.b3log.org">88250</a>','Symphony Interest','ENABLED','0.0.1','{}'),
('Table of Contents Generator_0.0.1','<a href="http://88250.b3log.org">88250</a>','Table of Contents Generator','ENABLED','0.0.1','{}');
DROP TABLE IF EXISTS  `b3_solo_statistic`;
CREATE TABLE `b3_solo_statistic` (
  `oId` varchar(255) NOT NULL,
  `statisticBlogArticleCount` int(11) NOT NULL,
  `statisticBlogCommentCount` int(11) NOT NULL,
  `statisticBlogViewCount` int(11) NOT NULL,
  `statisticPublishedBlogArticleCount` int(11) NOT NULL,
  `statisticPublishedBlogCommentCount` int(11) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_statistic`(`oId`,`statisticBlogArticleCount`,`statisticBlogCommentCount`,`statisticBlogViewCount`,`statisticPublishedBlogArticleCount`,`statisticPublishedBlogCommentCount`) values
('statistic','16','7','163','14','7');
DROP TABLE IF EXISTS  `b3_solo_tag`;
CREATE TABLE `b3_solo_tag` (
  `oId` varchar(255) NOT NULL,
  `tagPublishedRefCount` int(11) NOT NULL,
  `tagReferenceCount` int(11) NOT NULL,
  `tagTitle` varchar(255) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_tag`(`oId`,`tagPublishedRefCount`,`tagReferenceCount`,`tagTitle`) values
('1498230119874','1','1','Solo'),
('1498234648759','4','4','字体'),
('1498234648815','2','2','网页'),
('1498234648871','3','3','前端'),
('1498234648927','3','3','icon-font'),
('1498269909129','1','2','高可用'),
('1498269909180','2','3','SparkSQl'),
('1498269909231','4','5','Spark'),
('1498272377575','2','2','Flink'),
('1498285247509','2','2','java8'),
('1498285247560','3','3','java'),
('1498300488463','1','1','下载'),
('1498359380122','1','1','python'),
('1498365460317','2','3','七牛'),
('1498375054860','1','1','123'),
('1498452231766','2','2','Hadoop'),
('1498452231843','1','1','Kafka'),
('1498452735644','1','1','SparkStreaming'),
('1498829081348','1','1','31231313');
DROP TABLE IF EXISTS  `b3_solo_tag_article`;
CREATE TABLE `b3_solo_tag_article` (
  `oId` varchar(255) NOT NULL,
  `article_oId` varchar(255) NOT NULL,
  `tag_oId` varchar(255) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_tag_article`(`oId`,`article_oId`,`tag_oId`) values
('1498230119930','1498230119818','1498230119874'),
('1498234648983','1498234648708','1498234648759'),
('1498234649039','1498234648708','1498234648815'),
('1498234649095','1498234648708','1498234648871'),
('1498234649151','1498234648708','1498234648927'),
('1498269909283','1498269909078','1498269909129'),
('1498269909333','1498269909078','1498269909180'),
('1498269909384','1498269909078','1498269909231'),
('1498269909570','1498269909514','1498269909129'),
('1498269909620','1498269909514','1498269909180'),
('1498269909670','1498269909514','1498269909231'),
('1498272377627','1498272377517','1498234648759'),
('1498272377678','1498272377517','1498234648871'),
('1498272377728','1498272377517','1498234648927'),
('1498272377778','1498272377517','1498269909180'),
('1498272377828','1498272377517','1498269909231'),
('1498272377878','1498272377517','1498272377575'),
('1498285247617','1498285247458','1498285247509'),
('1498285247673','1498285247458','1498285247560'),
('1498298057610','1498298057554','1498234648759'),
('1498298057661','1498298057554','1498234648815'),
('1498298057711','1498298057554','1498234648871'),
('1498300488519','1498300488413','1498300488463'),
('1498300488570','1498300488413','1498285247560'),
('1498359380182','1498359380070','1498359380122'),
('1498374241011','1498374240953','1498365460317'),
('1498395265016','1498395264959','1498285247560'),
('1498395265067','1498395264959','1498285247509'),
('1498395265117','1498395264959','1498365460317'),
('1498396060776','1498396060717','1498234648759'),
('1498396060826','1498396060717','1498365460317'),
('1498396060876','1498396060717','1498375054860'),
('1498396060926','1498396060717','1498234648927'),
('1498451702414','1498395852962','1498269909231'),
('1498452231896','1498452231714','1498452231766'),
('1498452231947','1498452231714','1498452231843'),
('1498452735698','1498452735593','1498452735644'),
('1498452735749','1498452735593','1498269909231'),
('1498829081400','1498829081295','1498452231766'),
('1498829081450','1498829081295','1498272377575'),
('1498829081500','1498829081295','1498829081348');
DROP TABLE IF EXISTS  `b3_solo_user`;
CREATE TABLE `b3_solo_user` (
  `oId` varchar(255) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `userURL` varchar(255) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userRole` varchar(255) NOT NULL,
  `userArticleCount` int(11) NOT NULL,
  `userPublishedArticleCount` int(11) NOT NULL,
  `userAvatar` varchar(255) NOT NULL,
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `b3_solo_user`(`oId`,`userEmail`,`userName`,`userURL`,`userPassword`,`userRole`,`userArticleCount`,`userPublishedArticleCount`,`userAvatar`) values
('1498230119698','1031329190@qq.com','Altas','http://localhost:8080','07615cbe543eb2c0f6f82440665819f5','adminRole','16','13','http://k2.jsqq.net/uploads/allimg/1705/7_170524143440_5.jpg'),
('1498296610138','18998325857@189.cn','luojiao','http://localhost:8080','1d04064d540beb34e0cc414561bc6f35','defaultRole','0','0','https://secure.gravatar.com/avatar/2ab26e35c7bd97b1bbcb924ee5ed8495?s=128');
SET FOREIGN_KEY_CHECKS = 1;

