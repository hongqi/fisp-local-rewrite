this is fis local get & post data file using smarty
when using fis, local debugger is a huge tool, but you cannot get the data because of the cross-domain.
this two file can get the data you need from your host.

usage:
config your rewrite rule in server.conf like template ^\/picturefav\/submit\/url mobileimage/widget/testdata/postdata.tpl or template \/data\/albumlist mobileimage/widget/testdata/getdata.tpl
then use the date you want.

fis: http://fis.baidu.com
