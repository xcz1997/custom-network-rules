{% if request.target == "clash" or request.target == "clashr" %}

port: {{ default(global.clash.http_port, "7890") }}
socks-port: {{ default(global.clash.socks_port, "7891") }}
mixed-port: {{ default(global.clash.mixed_port, "7890") }}

allow-lan: {{ default(global.clash.allow_lan, "true") }}
mode: Rule
log-level: {{ default(global.clash.log_level, "info") }}
external-controller: :9090
{% if default(request.clash.dns, "0") == "1" %}
dns:
  enable: true
  ipv6: false
  listen: 0.0.0.0:53
{% endif %}
{% if local.clash.new_field_name == "true" %}
proxies: ~
proxy-groups: ~
rules: ~
{% else %}
Proxy: ~
Proxy Group: ~
Rule: ~
{% endif %}

# 自定义节点排序
# 可选参数：
#  default：按配置文件定义节点顺序
#  latency：按节点延迟升序排列
#  alphabet：按节点名称字母表排列
# Sort proxies in Proxies module by default/latency/alphabet
cfw-proxies-order: alphabet


# 系统代理跳过列表 cfw-bypass
# System proxy will ignore these domains(or ipnet)
# 系统代理跳过列表-备份的，不起作用，
# 使用时可以将cfw-bypass-bak与cfw-bypass内容互换
cfw-bypass-bak:
  # 原有字段不用删除
  - '*.ehi.*'
  - '*.1hai.*'
  - '*.yaodongfang.*'
  - qq.com
  - 'music.163.com' # 网易云域名1
  - '*.music.126.net' # 网易云域名2
  - localhost
  - 127.*
  - 10.*
  - 172.16.*
  - 172.17.*
  - 172.18.*
  - 172.19.*
  - 172.20.*
  - 172.21.*
  - 172.22.*
  - 172.23.*
  - 172.24.*
  - 172.25.*
  - 172.26.*
  - 172.27.*
  - 172.28.*
  - 172.29.*
  - 172.30.*
  - 172.31.*
  - 192.168.*
  - <local>
# 系统代理跳过列表 起作用的
cfw-bypass:
  # 直连列表
  # MyList
  - "*.13th.tech"
  - "*.423down.com"
  - "*.bokecc.com"
  - "*.chaipip.com"
  - "*.chinaplay.store"
  - "*.hrtsea.com"
  - "*.kaikeba.com"
  - "*.laomo.me"
  - "*.mpyit.com"
  - "*.msftconnecttest.com"
  - "*.msftncsi.com"
  - "*.qupu123.com"
  - "*.pdfwifi.com"
  - "*.zhenguanyu.biz"
  - "*.zhenguanyu.com"
  # CN域名直连(中国|公司|网络)
  - "*.xn--fiqs8s"
  - "*.xn--55qx5d"
  - "*.xn--io0a7i"
  # 中国国内常见域名关键词直连
  - "*360buy*"
  - "*alicdn*"
  - "*alimama*"
  - "*alipay*"
  - "*appzapp*"
  - "*baidupcs*"
  - "*bilibili*"
  - "*ccgslb*"
  - "*chinacache*"
  - "*duobao*"
  - "*jdpay*"
  - "*moke*"
  - "*qhimg*"
  - "*vpimg*"
  - "*xiami*"
  - "*xiaomi*"
  # 360
  - "*.360.com"
  - "*.360kuai.com"
  - "*.360safe.com"
  - "*.dhrest.com"
  - "*.qhres.com"
  - "*.qhstatic.com"
  - "*.qhupdate.com"
  - "*.so.com"
  # 4399
  - "*.4399.com"
  - "*.4399pk.com"
  - "*.5054399.com"
  - "*.img4399.com"
  # 58
  - "*.58.com"
  # Alibaba
  - "*.1688.com"
  - "*.aliapp.org"
  - "*.alibaba.com"
  - "*.alibabacloud.com"
  - "*.alibabausercontent.com"
  - "*.alicdn.com"
  - "*.alicloudccp.com"
  - "*.aliexpress.com"
  - "*.aliimg.com"
  - "*.alikunlun.com"
  - "*.alipay.com"
  - "*.alipayobjects.com"
  - "*.alisoft.com"
  - "*.aliyun.com"
  - "*.aliyuncdn.com"
  - "*.aliyuncs.com"
  - "*.aliyundrive.com"
  - "*.amap.com"
  - "*.autonavi.com"
  - "*.dingtalk.com"
  - "*.ele.me"
  - "*.hichina.com"
  - "*.mmstat.com"
  - "*.mxhichina.com"
  - "*.soku.com"
  - "*.taobao.com"
  - "*.taobaocdn.com"
  - "*.tbcache.com"
  - "*.tbcdn.com"
  - "*.tmall.com"
  - "*.tmall.hk"
  - "*.ucweb.com"
  - "*.xiami.com"
  - "*.xiami.net"
  - "*.ykimg.com"
  - "*.youku.com"
  # Baidu
  - "*.baidu.com"
  - "*.baidubcr.com"
  - "*.baidupcs.com"
  - "*.baidustatic.com"
  - "*.bcebos.com"
  - "*.bdimg.com"
  - "*.bdstatic.com"
  - "*.bdurl.net"
  - "*.hao123.com"
  - "*.hao123img.com"
  - "*.jomodns.com"
  - "*.yunjiasu-cdn.net"
  # Bilibili
  - "*.acg.tv"
  - "*.acgvideo.com"
  - "*.b23.tv"
  - "*.bigfun.cn"
  - "*.bigfunapp.cn"
  - "*.biliapi.com"
  - "*.biliapi.net"
  - "*.bilibili.com"
  - "*.biligame.com"
  - "*.biligame.net"
  - "*.bilivideo.com"
  - "*.bilivideo.cn"
  - "*.hdslb.com"
  - "*.im9.com"
  - "*.smtcdns.net"
  # Blizzard
  - "*.battle.net"
  - "*.battlenet.com"
  - "*.blizzard.com"
  # ByteDance
  - "*.amemv.com"
  - "*.bdxiguaimg.com"
  - "*.bdxiguastatic.com"
  - "*.byted-static.com"
  - "*.bytedance.com"
  - "*.bytedance.net"
  - "*.bytedns.net"
  - "*.bytednsdoc.com"
  - "*.bytegoofy.com"
  - "*.byteimg.com"
  - "*.bytescm.com"
  - "*.bytetos.com"
  - "*.bytexservice.com"
  - "*.douyin.com"
  - "*.douyincdn.com"
  - "*.douyinpic.com"
  - "*.douyinstatic.com"
  - "*.douyinvod.com"
  - "*.feelgood.cn"
  - "*.feiliao.com"
  - "*.gifshow.com"
  - "*.huoshan.com"
  - "*.huoshanzhibo.com"
  - "*.ibytedapm.com"
  - "*.iesdouyin.com"
  - "*.ixigua.com"
  - "*.kspkg.com"
  - "*.pstatp.com"
  - "*.snssdk.com"
  - "*.toutiao.com"
  - "*.toutiao13.com"
  - "*.toutiaoapi.com"
  - "*.toutiaocdn.com"
  - "*.toutiaocdn.net"
  - "*.toutiaocloud.com"
  - "*.toutiaohao.com"
  - "*.toutiaohao.net"
  - "*.toutiaoimg.com"
  - "*.toutiaopage.com"
  - "*.wukong.com"
  - "*.zijieapi.com"
  - "*.zijieimg.com"
  - "*.zjbyte.com"
  - "*.zjcdn.com"
  # CCTV
  - "*.cctv.com"
  - "*.cctvpic.com"
  - "*.livechina.com"
  # ChinaNet
  - "*.21cn.com"
  # DiDi
  - "*.didialift.com"
  - "*.didiglobal.com"
  - "*.udache.com"
  # Douyu 斗鱼
  - "*.douyu.com"
  - "*.douyu.tv"
  - "*.douyuscdn.com"
  - "*.douyutv.com"
  # Epic
  - "*.epicgames.com"
  - "*.epicgames.dev"
  - "*.helpshift.com"
  - "*.paragon.com"
  - "*.unrealengine.com"
  # HuaWei
  - "*.dbankcdn.com"
  - "*.hc-cdn.com"
  - "*.hicloud.com"
  - "*.hihonor.com"
  - "*.huawei.com"
  - "*.huaweicloud.com"
  - "*.huaweishop.net"
  - "*.hwccpc.com"
  - "*.vmall.com"
  - "*.vmallres.com"
  # Iflytek 科大讯飞
  - "*.iflyink.com"
  - "*.iflyrec.com"
  - "*.iflytek.com"
  # Iqiyi
  - "*.71.am"
  - "*.71edge.com"
  - "*.iqiyi.com"
  - "*.iqiyipic.com"
  - "*.ppsimg.com"
  - "*.qiyi.com"
  - "*.qiyipic.com"
  - "*.qy.net"
  # JD
  - "*.360buy.com"
  - "*.360buyimg.com"
  - "*.jcloudcs.com"
  - "*.jd.com"
  - "*.jd.hk"
  - "*.jdcloud.com"
  - "*.jdpay.com"
  - "*.paipai.com"
  # Kingsoft
  - "*.iciba.com"
  - "*.ksosoft.com"
  - "*.ksyun.com"
  # Kuaishou 快手
  - "*.kuaishou.com"
  - "*.yximgs.com"
  # Meitu
  - "*.meitu.com"
  - "*.meitudata.com"
  - "*.meitustat.com"
  - "*.meipai.com"
  # LeTV 乐视
  - "*.le.com"
  - "*.lecloud.com"
  - "*.letv.com"
  - "*.letvcloud.com"
  - "*.letvimg.com"
  - "*.letvlive.com"
  - "*.letvstore.com"
  # MGTV 芒果TV
  - "*.hitv.com"
  - "*.hunantv.com"
  - "*.mgtv.com"
  # MI
  - "*.duokan.com"
  - "*.mi-img.com"
  - "*.mi.com"
  - "*.miui.com"
  - "*.xiaomi.com"
  - "*.xiaomi.net"
  - "*.xiaomicp.com"
  # NetEase
  - "*.126.com"
  - "*.126.net"
  - "*.127.net"
  - "*.163.com"
  - "*.163yun.com"
  - "*.lofter.com"
  - "*.netease.com"
  - "*.ydstatic.com"
  - "*.youdao.com"
  # PPTV、PPLive
  - "*.pplive.com"
  - "*.pptv.com"
  # PDD 拼多多
  - "*.pinduoduo.com"
  - "*.yangkeduo.com"
  # Sina
  - "*.leju.com"
  - "*.miaopai.com"
  - "*.sina.com"
  - "*.sina.com.cn"
  - "*.sina.cn"
  - "*.sinaapp.com"
  - "*.sinaapp.cn"
  - "*.sinaimg.com"
  - "*.sinaimg.cn"
  - "*.weibo.com"
  - "*.weibo.cn"
  - "*.weibocdn.com"
  - "*.weibocdn.cn"
  - "*.xiaoka.tv"
  # Sohu Sogo
  - "*.go2map.com"
  - "*.sogo.com"
  - "*.sogou.com"
  - "*.sogoucdn.com"
  - "*.sohu-inc.com"
  - "*.sohu.com"
  - "*.sohucs.com"
  - "*.sohuno.com"
  - "*.sohurdc.com"
  - "*.v-56.com"
  # Sony
  - "*.playstation.com"
  - "*.playstation.net"
  - "*.playstationnetwork.com"
  - "*.sony.com"
  - "*.sonyentertainmentnetwork.com"
  # SteamCN
  - "*.cm.steampowered.com"
  - "*.steamcontent.com"
  - "*.steamusercontent.com"
  - "*.steamchina.com"
  - "csgo.wmsj.cn"
  - "dota2.wmsj.cn"
  - "wmsjsteam.com"
  - "dl.steam.clngaa.com"
  - "dl.steam.ksyna.com"
  - "st.dl.bscstorage.net"
  - "st.dl.eccdnx.com"
  - "st.dl.pinyuncloud.com"
  - "xz.pphimalayanrt.com"
  - "steampipe.steamcontent.tnkjmec.com"
  - "steampowered.com.8686c.com"
  - "steamstatic.com.8686c.com"
  # Tencent
  - "*.foxmail.com"
  - "*.gtimg.com"
  - "*.idqqimg.com"
  - "*.igamecj.com"
  - "*.myapp.com"
  - "*.myqcloud.com"
  - "*.qq.com"
  - "*.qqmail.com"
  - "*.qqurl.com"
  - "*.smtcdns.com"
  - "*.smtcdns.net"
  - "*.soso.com"
  - "*.tencent-cloud.net"
  - "*.tencent.com"
  - "*.tencentmind.com"
  - "*.tenpay.com"
  - "*.wechat.com"
  - "*.weixin.com"
  - "*.weiyun.com"
  # Vip 唯品会
  - "*.appsimg.com"
  - "*.appvipshop.com"
  - "*.vip.com"
  - "*.vipstatic.com"
  # Ximalaya 喜马拉雅
  - "*.ximalaya.com"
  - "*.xmcdn.com"
  # Xunlei 迅雷
  - "*.00cdn.com"
  - "*.88cdn.com"
  - "*.kanimg.com"
  - "*.kankan.com"
  - "*.p2cdn.com"
  - "*.sandai.net"
  - "*.thundercdn.com"
  - "*.xunlei.com"
  # YYeTs 人人影视
  - "*.got001.com"
  - "*.p4pfile.com"
  - "*.rrys.tv"
  - "*.rrys2020.com"
  - "*.yyets.com"
  - "*.zimuzu.io"
  - "*.zimuzu.tv"
  - "*.zmz001.com"
  - "*.zmz002.com"
  - "*.zmz003.com"
  - "*.zmz004.com"
  - "*.zmz2019.com"
  - "*.zmzapi.com"
  - "*.zmzapi.net"
  - "*.zmzfile.com"
  # Private Tracker
  - "*announce*"
  - "*torrent*"
  - "*tracker*"
  - "*announce*"
  - "*torrent*"
  - "*tracker*"
  - "*.52pt.site"
  - "*.aidoru-online.me"
  - "*.alpharatio.cc"
  - "*.animebytes.tv"
  - "*.animetorrents.me"
  - "*.anthelion.me"
  - "*.asiancinema.me"
  - "*.audiences.me"
  - "*.avgv.cc"
  - "*.avistaz.to"
  - "*.awesome-hd.me"
  - "*.beitai.pt"
  - "*.beyond-hd.me"
  - "*.bibliotik.me"
  - "*.bittorrent.com"
  - "*.blutopia.xyz"
  - "*.broadcasthe.net"
  - "*.bt.byr.cn"
  - "*.bt.neu6.edu.cn"
  - "*.btschool.club"
  - "*.bwtorrents.tv"
  - "*.byr.pt"
  - "*.ccfbits.org"
  - "*.cgpeers.com"
  - "*.chdbits.co"
  - "*.cinemageddon.net"
  - "*.cinematik.net"
  - "*.cinemaz.to"
  - "*.classix-unlimited.co.uk"
  - "*.concertos.live"
  - "*.dicmusic.club"
  - "*.discfan.net"
  - "*.dxdhd.com"
  - "*.eastgame.org"
  - "*.empornium.me"
  - "*.et8.org"
  - "*.exoticaz.to"
  - "*.extremlymtorrents.ws"
  - "*.filelist.io"
  - "*.gainbound.net"
  - "*.gazellegames.net"
  - "*.gfxpeers.net"
  - "*.hd-space.org"
  - "*.hd-torrents.org"
  - "*.hd4.xyz"
  - "*.hd4fans.org"
  - "*.hdarea.co"
  - "*.hdatmos.club"
  - "*.hdbd.us"
  - "*.hdbits.org"
  - "*.hdchina.org"
  - "*.hdcity.city"
  - "*.hddolby.com"
  - "*.hdfans.org"
  - "*.hdhome.org"
  - "*.hdpost.top"
  - "*.hdroute.org"
  - "*.hdsky.me"
  - "*.hdstreet.club"
  - "*.hdtime.org"
  - "*.hdupt.com"
  - "*.hdzone.me"
  - "*.hhanclub.top"
  - "*.hitpt.com"
  - "*.hitpt.org"
  - "*.hudbt.hust.edu.cn"
  - "*.icetorrent.org"
  - "*.iptorrents.com"
  - "*.j99.info"
  - "*.joyhd.net"
  - "*.jpopsuki.eu"
  - "*.karagarga.in"
  - "*.keepfrds.com"
  - "*.landof.tv"
  - "*.leaguehd.com"
  - "*.lemonhd.org"
  - "*.lztr.me"
  - "*.m-team.cc"
  - "*.madsrevolution.net"
  - "*.moecat.best"
  - "*.morethan.tv"
  - "*.msg.vg"
  - "*.myanonamouse.net"
  - "*.nanyangpt.com"
  - "*.ncore.cc"
  - "*.nebulance.io"
  - "*.nicept.net"
  - "*.npupt.com"
  - "*.nwsuaf6.edu.cn"
  - "*.open.cd"
  - "*.oppaiti.me"
  - "*.orpheus.network"
  - "*.ourbits.club"
  - "*.passthepopcorn.me"
  - "*.pornbits.net"
  - "*.privatehd.to"
  - "*.pterclub.com"
  - "*.pthome.net"
  - "*.ptsbao.club"
  - "*.pttime.org"
  - "*.pussytorrents.org"
  - "*.redacted.ch"
  - "*.sdbits.org"
  - "*.sharkpt.net"
  - "*.sjtu.edu.cn"
  - "*.skyey2.com"
  - "*.soulvoice.club"
  - "*.springsunday.net"
  - "*.tju.pt"
  - "*.tjupt.org"
  - "*.torrentday.com"
  - "*.torrentleech.org"
  - "*.torrentseeds.org"
  - "*.totheglory.im"
  - "*.trontv.com"
  - "*.u2.dmhy.org"
  - "*.uhdbits.org"
  - "*.xauat6.edu.cn"
  # TeamViewer
  - "*.teamviewer.com"
  # Public Direct CDN 公共直连
  - "*.baomitu.com"
  - "*.bootcss.com"
  - "*.jiasule.com"
  - "*.staticfile.org"
  - "*.upaiyun.com"
  # AccelerateDirectSites
  - "*.10010.com"
  - "*.115.com"
  - "*.12306.com"
  - "*.17173.com"
  - "*.178.com"
  - "*.17k.com"
  - "*.360doc.com"
  - "*.36kr.com"
  - "*.3dmgame.com"
  - "*.51cto.com"
  - "*.51job.com"
  - "*.51jobcdn.com"
  - "*.56.com"
  - "*.8686c.com"
  - "*.abchina.com"
  - "*.abercrombie.com"
  - "*.acfun.tv"
  - "*.air-matters.com"
  - "*.air-matters.io"
  - "*.aixifan.com"
  - "*.algocasts.io"
  - "*.babytree.com"
  - "*.babytreeimg.com"
  - "*.baicizhan.com"
  - "*.baidupan.com"
  - "*.baike.com"
  - "*.biqudu.com"
  - "*.biquge.com"
  - "*.bitauto.com"
  - "*.c-ctrip.com"
  - "*.camera360.com"
  - "*.cdnmama.com"
  - "*.chaoxing.com"
  - "*.che168.com"
  - "*.chinacache.net"
  - "*.chinaso.com"
  - "*.chinaz.com"
  - "*.chinaz.net"
  - "*.chuimg.com"
  - "*.cibntv.net"
  - "*.clouddn.com"
  - "*.cloudxns.net"
  - "*.cn163.net"
  - "*.cnblogs.com"
  - "*.cnki.net"
  - "*.cnmstl.net"
  - "*.coolapk.com"
  - "*.coolapkmarket.com"
  - "*.csdn.net"
  - "*.ctrip.com"
  - "*.dangdang.com"
  - "*.dfcfw.com"
  - "*.dianping.com"
  - "*.dilidili.wang"
  - "*.douban.com"
  - "*.doubanio.com"
  - "*.dpfile.com"
  - "*.duowan.com"
  - "*.dxycdn.com"
  - "*.dytt8.net"
  - "*.easou.com"
  - "*.eastday.com"
  - "*.eastmoney.com"
  - "*.ecitic.com"
  - "*.ewqcxz.com"
  - "*.fang.com"
  - "*.fantasy.tv"
  - "*.feng.com"
  - "*.fengkongcloud.com"
  - "*.fir.im"
  - "*.frdic.com"
  - "*.fresh-ideas.cc"
  - "*.ganji.com"
  - "*.ganjistatic1.com"
  - "*.geetest.com"
  - "*.geilicdn.com"
  - "*.ghpym.com"
  - "*.godic.net"
  - "*.guazi.com"
  - "*.gwdang.com"
  - "*.gzlzfm.com"
  - "*.haibian.com"
  - "*.haosou.com"
  - "*.hollisterco.com"
  - "*.hongxiu.com"
  - "*.huajiao.com"
  - "*.hupu.com"
  - "*.huxiucdn.com"
  - "*.huya.com"
  - "*.ifeng.com"
  - "*.ifengimg.com"
  - "*.images-amazon.com"
  - "*.infzm.com"
  - "*.ipip.net"
  - "*.it168.com"
  - "*.ithome.com"
  - "*.ixdzs.com"
  - "*.jianguoyun.com"
  - "*.jianshu.com"
  - "*.jianshu.io"
  - "*.jianshuapi.com"
  - "*.jiathis.com"
  - "*.jmstatic.com"
  - "*.jumei.com"
  - "*.kaola.com"
  - "*.knewone.com"
  - "*.koowo.com"
  - "*.ksyungslb.com"
  - "*.kuaidi100.com"
  - "*.kugou.com"
  - "*.lancdns.com"
  - "*.landiannews.com"
  - "*.lanzou.com"
  - "*.lanzoui.com"
  - "*.lanzoux.com"
  - "*.lemicp.com"
  - "*.letitfly.me"
  - "*.lizhi.fm"
  - "*.lizhi.io"
  - "*.lizhifm.com"
  - "*.luoo.net"
  - "*.lvmama.com"
  - "*.lxdns.com"
  - "*.maoyan.com"
  - "*.meilishuo.com"
  - "*.meituan.com"
  - "*.meituan.net"
  - "*.meizu.com"
  - "*.migucloud.com"
  - "*.miguvideo.com"
  - "*.mobike.com"
  - "*.mogu.com"
  - "*.mogucdn.com"
  - "*.mogujie.com"
  - "*.moji.com"
  - "*.moke.com"
  - "*.msstatic.com"
  - "*.mubu.com"
  - "*.myunlu.com"
  - "*.nruan.com"
  - "*.nuomi.com"
  - "*.onedns.net"
  - "*.oneplus.com"
  - "*.onlinedown.net"
  - "*.oppo.com"
  - "*.oracle.com"
  - "*.oschina.net"
  - "*.ourdvs.com"
  - "*.polyv.net"
  - "*.qbox.me"
  - "*.qcloud.com"
  - "*.qcloudcdn.com"
  - "*.qdaily.com"
  - "*.qdmm.com"
  - "*.qhimg.com"
  - "*.qianqian.com"
  - "*.qidian.com"
  - "*.qihucdn.com"
  - "*.qin.io"
  - "*.qiniu.com"
  - "*.qiniucdn.com"
  - "*.qiniudn.com"
  - "*.qiushibaike.com"
  - "*.quanmin.tv"
  - "*.qunar.com"
  - "*.qunarzz.com"
  - "*.realme.com"
  - "*.repaik.com"
  - "*.ruguoapp.com"
  - "*.runoob.com"
  - "*.sankuai.com"
  - "*.segmentfault.com"
  - "*.sf-express.com"
  - "*.shumilou.net"
  - "*.simplecd.me"
  - "*.smzdm.com"
  - "*.snwx.com"
  - "*.soufunimg.com"
  - "*.sspai.com"
  - "*.startssl.com"
  - "*.suning.com"
  - "*.synology.com"
  - "*.taihe.com"
  - "*.th-sjy.com"
  - "*.tianqi.com"
  - "*.tianqistatic.com"
  - "*.tianyancha.com"
  - "*.tianyaui.com"
  - "*.tietuku.com"
  - "*.tiexue.net"
  - "*.tmiaoo.com"
  - "*.trip.com"
  - "*.ttmeiju.com"
  - "*.tudou.com"
  - "*.tuniu.com"
  - "*.tuniucdn.com"
  - "*.umengcloud.com"
  - "*.upyun.com"
  - "*.uxengine.net"
  - "*.videocc.net"
  - "*.vivo.com"
  - "*.wandoujia.com"
  - "*.weather.com"
  - "*.weico.cc"
  - "*.weidian.com"
  - "*.weiphone.com"
  - "*.weiphone.net"
  - "*.womai.com"
  - "*.wscdns.com"
  - "*.xdrig.com"
  - "*.xhscdn.com"
  - "*.xiachufang.com"
  - "*.xiaohongshu.com"
  - "*.xiaojukeji.com"
  - "*.xinhuanet.com"
  - "*.xip.io"
  - "*.xitek.com"
  - "*.xiumi.us"
  - "*.xslb.net"
  - "*.xueqiu.com"
  - "*.yach.me"
  - "*.yeepay.com"
  - "*.yhd.com"
  - "*.yihaodianimg.com"
  - "*.yinxiang.com"
  - "*.yinyuetai.com"
  - "*.yixia.com"
  - "*.ys168.com"
  - "*.yuewen.com"
  - "*.yy.com"
  - "*.yystatic.com"
  - "*.zealer.com"
  - "*.zhangzishi.cc"
  - "*.zhanqi.tv"
  - "*.zhaopin.com"
  - "*.zhihu.com"
  - "*.zhimg.com"
  - "*.zhongsou.com"
  - "*.zhuihd.com"
  - "localhost"
  - 127.*
  - 10.*
  - 172.16.*
  - 172.17.*
  - 172.18.*
  - 172.19.*
  - 172.20.*
  - 172.21.*
  - 172.22.*
  - 172.23.*
  - 172.24.*
  - 172.25.*
  - 172.26.*
  - 172.27.*
  - 172.28.*
  - 172.29.*
  - 172.30.*
  - 172.31.*
  - 192.168.*
  - <local>
{% endif %}
{% if request.target == "surge" %}

[General]
loglevel = notify
bypass-system = true
skip-proxy = 127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
#DNS设置或根据自己网络情况进行相应设置
bypass-tun = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
dns-server = 119.29.29.29,223.5.5.5

[Script]
http-request https?:\/\/.*\.iqiyi\.com\/.*authcookie= script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/NobyDa/Script/master/iQIYI-DailyBonus/iQIYI.js

{% endif %}
{% if request.target == "loon" %}

[General]
# IPV6 启动与否
ipv6 = false
# udp 类的 dns 服务器，用,隔开多个服务器，system 表示系统 dns
dns-server = 119.29.29.29, 223.5.5.5
# DNS over HTTPS服务器，用,隔开多个服务器
doh-server = https://223.5.5.5/resolve, https://sm2.doh.pub/dns-query
# 是否开启局域网代理访问
allow-wifi-access = true
# 开启局域网访问后的 http 代理端口
wifi-access-http-port = 7222
# 开启局域网访问后的 socks5 代理端口
wifi-access-socks5-port = 7221
# 测速所用的测试链接，如果策略组没有自定义测试链接就会使用这里配置的
proxy-test-url = http://connectivitycheck.gstatic.com
# 节点测速时的超时秒数
test-timeout = 2
# 指定流量使用哪个网络接口进行转发
interface-mode = auto
sni-sniffing = true
# 禁用 stun 是否禁用 stun 协议的 udp 数据，禁用后可以有效解决 webrtc 的 ip 泄露
disable-stun = true
# 策略改变时候打断连接
disconnect-on-policy-change = true
# 一个节点连接失败几次后会进行节点切换，默认 3 次
switch-node-after-failure-times = 3
# 订阅资源解析器链接
resource-parser = https://gitlab.com/lodepuly/vpn_tool/-/raw/main/Resource/Script/Sub-Store/sub-store-parser_for_loon.js
# 自定义 geoip 数据库的 url
geoip-url = https://gitlab.com/Masaiki/GeoIP2-CN/-/raw/release/Country.mmdb
# 配置了该参数，那么所配置的这些IP段、域名将不会转发到Loon，而是由系统处理
skip-proxy = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, localhost, *.local, captive.apple.com, e.crashlynatics.com
# 配置了该参数，那么所配置的这些IP段、域名就会不交给Loon来处理，系统直接处理
bypass-tun = 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.88.99.0/24, 192.168.0.0/16, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 239.255.255.250/32, 255.255.255.255/32
# 当切换到某一特定的WiFi下时改变Loon的流量模式，如"loon-wifi5g":DIRECT，表示在loon-wifi5g这个wifi网络下使用直连模式，"cellular":PROXY，表示在蜂窝网络下使用代理模式，"default":RULE，默认使用分流模式
ssid-trigger = "Ccccccc":DIRECT,"cellular":RULE,"default":RULE

[Proxy]

[Remote Proxy]

[Remote Filter]

[Proxy Group]
♻️ 自动选择=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
🔰 节点选择=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
🌍 国外媒体=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
🌏 国内媒体=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
Ⓜ️ 微软服务=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
📲 电报信息=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
🍎 苹果服务=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
🎯 全球直连=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
🛑 全球拦截=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
🐟 漏网之鱼=select, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[Rule]

[Remote Rule]

[Rewrite]

[Host]

[Script]
# 多看阅读  (By @chavyleung)
# 我的 > 签到任务 等到提示获取 Cookie 成功即可
http-request ^https:\/\/www\.duokan\.com\/checkin\/v0\/status script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/duokan/duokan.cookie.js, requires-body=true, tag=多看_cookie
cron "16 9 * * *" script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/duokan/duokan.js, tag=多看阅读

# 飞客茶馆  (By @chavyleung)
# 打开 APP, 访问下个人中心
http-request ^https:\/\/www\.flyertea\.com\/source\/plugin\/mobile\/mobile\.php\?module=getdata&.* script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/flyertea/flyertea.cookie.js, tag=飞客茶馆_cookie
cron "17 9 * * * *" script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/flyertea/flyertea.js,tag=飞客茶馆

# 10010  (By @chavyleung)
# 打开 APP , 进入签到页面, 系统提示: 获取刷新链接: 成功
# 然后手动签到 1 次, 系统提示: 获取Cookie: 成功 (每日签到)
# 首页>天天抽奖, 系统提示 2 次: 获取Cookie: 成功 (登录抽奖) 和 获取Cookie: 成功 (抽奖次数)
http-request ^https?:\/\/act.10010.com\/SigninApp\/signin\/querySigninActivity.htm script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.cookie.js, tag=中国联通_cookie1
http-request ^https?:\/\/act.10010.com\/SigninApp(.*?)\/signin\/daySign script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.cookie.js, tag=中国联通_cookie2
http-request ^https?:\/\/m.client.10010.com\/dailylottery\/static\/(textdl\/userLogin|active\/findActivityInfo) script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.cookie.js, tag=中国联通_cookie3
cron "18 9 * * *" script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.js, tag=中国联通

# 万达电影  (By @chavyleung)
# 进入签到页面获取，网页端:https://act-m.wandacinemas.com/2005/17621a8caacc4d190dadd/
http-request ^https:\/\/user-api-prd-mx\.wandafilm\.com script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/wanda/wanda.cookie.js, tag=万达电影_cookie
cron "19 9 * * *" script-path=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/chavyleung/scripts/master/wanda/wanda.js, tag=万达电影

[MITM]
hostname = m.client.10010.com, act.10010.com, www.flyertea.com, www.duokan.com, tieba.baidu.com
ca-p12 = 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
ca-passphrase = FA1A9849
skip-server-cert-verify = false

{% endif %}
{% if request.target == "quan" %}

[SERVER]

[SOURCE]

[BACKUP-SERVER]

[SUSPEND-SSID]

[POLICY]

[DNS]
1.1.1.1

[REWRITE]

[URL-REJECTION]

[TCP]

[GLOBAL]

[HOST]

[STATE]
STATE,AUTO

[MITM]

{% endif %}
{% if request.target == "quanx" %}

[general]
excluded_routes=192.168.0.0/16, 172.16.0.0/12, 100.64.0.0/10, 10.0.0.0/8
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://github.com/KOP-XIAO/QuantumultX/raw/master/Scripts/IP_API.js
network_check_url=http://www.baidu.com/
server_check_url=http://www.gstatic.com/generate_204

[dns]
server=119.29.29.29
server=223.5.5.5
server=1.0.0.1
server=8.8.8.8

[policy]
static=♻️ 自动选择, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
static=ߔࠨꂧ⹩ɦ멬 direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
static=ߌ�뽥䖥꒤퓬 direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
static=ߌ뽥慥꒤퓬 direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
static=Ⓜ️ 微软服务, direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
static=ߓ⠧䵦ꥤᯬ direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
static=ߍ빦썥ꡬ direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
static=ߎ娧ç봨 direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
static=ߛᠥ娧æ릦説 direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
static=ߐ쏧푤鋩Ἤ direct, img-url=https://proxy.muuua.cn/proxy/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[server_remote]

[filter_remote]

[rewrite_remote]

[server_local]

[filter_local]

[rewrite_local]

[mitm]

{% endif %}
{% if request.target == "mellow" %}

[Endpoint]
DIRECT, builtin, freedom, domainStrategy=UseIP
REJECT, builtin, blackhole
Dns-Out, builtin, dns

[Routing]
domainStrategy = IPIfNonMatch

[Dns]
hijack = Dns-Out
clientIp = 114.114.114.114

[DnsServer]
localhost
223.5.5.5
8.8.8.8, 53, Remote
8.8.4.4

[DnsRule]
DOMAIN-KEYWORD, geosite:geolocation-!cn, Remote
DOMAIN-SUFFIX, google.com, Remote

[DnsHost]
doubleclick.net = 127.0.0.1

[Log]
loglevel = warning

{% endif %}
{% if request.target == "surfboard" %}

[General]
loglevel = notify
interface = 127.0.0.1
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
ipv6 = false
dns-server = system, 223.5.5.5
exclude-simple-hostnames = true
enhanced-mode-by-rule = true
{% endif %}
{% if request.target == "sssub" %}
{
  "route": "bypass-lan-china",
  "remote_dns": "dns.google",
  "ipv6": false,
  "metered": false,
  "proxy_apps": {
    "enabled": false,
    "bypass": true,
    "android_list": [
      "com.eg.android.AlipayGphone",
      "com.wudaokou.hippo",
      "com.zhihu.android"
    ]
  },
  "udpdns": false
}

{% endif %}
{% if request.target == "singbox" %}

{
    "log": {
        "disabled": false,
        "level": "info",
        "timestamp": true
    },
    "dns": {
        "servers": [
            {
                "tag": "dns_proxy",
                "address": "tls://1.1.1.1",
                "address_resolver": "dns_resolver"
            },
            {
                "tag": "dns_direct",
                "address": "h3://dns.alidns.com/dns-query",
                "address_resolver": "dns_resolver",
                "detour": "DIRECT"
            },
            {
                "tag": "dns_fakeip",
                "address": "fakeip"
            },
            {
                "tag": "dns_resolver",
                "address": "223.5.5.5",
                "detour": "DIRECT"
            },
            {
                "tag": "block",
                "address": "rcode://success"
            }
        ],
        "rules": [
            {
                "outbound": [
                    "any"
                ],
                "server": "dns_resolver"
            },
            {
                "geosite": [
                    "category-ads-all"
                ],
                "server": "dns_block",
                "disable_cache": true
            },
            {
                "geosite": [
                    "geolocation-!cn"
                ],
                "query_type": [
                    "A",
                    "AAAA"
                ],
                "server": "dns_fakeip"
            },
            {
                "geosite": [
                    "geolocation-!cn"
                ],
                "server": "dns_proxy"
            },
            {
                "process_name": [
                    "TencentMeeting", "NemoDesktop", "ToDesk", "ToDesk_Service",
                    "WeChat", "Tailscale", "wireguard-go", "Tunnelblick",
                    "softwareupdated", "kubectl"
                ],
                "server": "dns_direct"
            },
            {
                "domain_suffix": [
                    "icloudnative.io", "fuckcloudnative.io", "sealos.io", "cdn.jsdelivr.net"
                ],
                "server": "dns_direct"
            }
        ],
        "final": "dns_direct",
        "independent_cache": true,
        "fakeip": {
            "enabled": true,
            {% if default(request.singbox.ipv6, "") == "1" %}
            "inet6_range": "fc00::\/18",
            {% endif %}
            "inet4_range": "198.18.0.0\/15"
        }
    },
    "ntp": {
        "enabled": true,
        "server": "time.apple.com",
        "server_port": 123,
        "interval": "30m",
        "detour": "DIRECT"
    },
    "inbounds": [
        {
            "type": "mixed",
            "tag": "mixed-in",
            {% if bool(default(global.singbox.allow_lan, "")) %}
            "listen": "0.0.0.0",
            {% else %}
            "listen": "127.0.0.1",
            {% endif %}
            "listen_port": {{ default(global.singbox.mixed_port, "2080") }}
        },
        {
            "type": "tun",
            "tag": "tun-in",
            "inet4_address": "172.19.0.1/30",
            {% if default(request.singbox.ipv6, "") == "1" %}
            "inet6_address": "fdfe:dcba:9876::1/126",
            {% endif %}
            "auto_route": true,
            "strict_route": true,
            "stack": "mixed",
            "sniff": true
        }
    ],
    "outbounds": [],
    "route": {
        "rules": [], 
        "rule_set": [],
        "auto_detect_interface": true
    },
    "experimental": {
        "cache_file": {
            "enabled": true,
            "store_fakeip": true
        },
        "clash_api": {
            "external_controller": "0.0.0.0:9999",
            "external_ui": "dashboard",
            "default_mode": "rule"
        }
    }
}

{% endif %}
