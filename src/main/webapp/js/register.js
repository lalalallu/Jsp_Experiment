function check(theform) {
    if (theform.username.value == "") {
        alert("用户名不能为空！");
        theform.username.focus();
        return false;
    }
    if (theform.userpwd.value == "") {
        alert("密码不能为空！");
        theform.userpwd.focus();
    }
    if (theform.userpwd.value != theform.userpwd2.value) {
        alert("两次密码不一致，请重新输入!");
        theform.userpwd2.value = "";
        theform.userpwd2.focus();
        return false;
    }
    const reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
    if (!reg.test(theform.mail.value)) {
        alert("请填写正确的邮箱格式！");
        theform.mail.value == "";
        theform.mail.focus();
        return false;
    }
}
function usernameFocused() {
    const usernameId = document.getElementById("usernameId");
    usernameId.className = "import_prompt";
    usernameId.innerHTML = "1.由字母、数字、下划线、点、减号组成<br/>2.只能以数字、字母开头或结尾，且长度为4-18";
    return true;
}
function usernameBlur() {
    const username = document.getElementById("username");
    const usernameId = document.getElementById("usernameId");
    const reg = /^[0-9a-zA-Z][0-9a-zA-Z_.-]{2,16}[0-9a-zA-Z]$/;
    if (username.value == "") {
        usernameId.className = "error_prompt";
        usernameId.innerHTML = "用户名不能为空，请输入用户名";
        return false;
    }
    if (reg.test(username.value) == false) {
        usernameId.className = "error_prompt";
        usernameId.innerHTML = "1.由字母、数字、下划线、点、减号组成<br/>2.只能以数字、字母开头或结尾，且长度为4-18";
        return false;
    }
    usernameId.className = "ok_prompt";
    usernameId.innerHTML = "用户名输入正确";
    return true;
}
function userpwdFocused() {
    const userpwdId = document.getElementById("userpwdId");
    userpwdId.className = "import_prompt";
    userpwdId.innerHTML = "密码由数字、字母组成，且长度为6-18";
    return true;
}
function userpwdBlur() {
    const userpwd = document.getElementById("userpwd");
    const userpwdId = document.getElementById("userpwdId");
    const reg = /[0-9a-zA-Z]{6,18}/;
    if (userpwd.value == "") {
        userpwdId.className = "error_prompt";
        userpwdId.innerHTML = "密码不能为空，请输入密码！";
        return false;
    }
    if (reg.test(userpwd.value) == false) {
        userpwdId.className = "error_prompt";
        userpwdId.innerHTML = "密码由数字、字母组成，且长度为6-18";
        return false;
    }
    userpwdId.className = "ok_prompt";
    userpwdId.innerHTML = "密码格式正确！";
    return true;
}
function userpwd2Blur() {
    const userpwd2 = document.getElementById("userpwd2");
    const userpwd2Id = document.getElementById("userpwd2Id");
    const userpwd = document.getElementById("userpwd");
    if (userpwd.value != userpwd2.value) {
        userpwd2Id.className = "error_prompt";
        userpwd2Id.innerHTML = "两次密码不一致，请重新输入!";
        return false;
    }
    userpwd2Id.className = "disappear";
    return true;
}
function useremailBlur() {
    const useremail = document.getElementById("useremail");
    const useremailId = document.getElementById("useremailId");
    const reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
    if (!reg.test(useremail.value)) {
        useremailId.className = "error_prompt";
        useremailId.innerHTML = "邮箱格式错误，请重新输入！";
        return false;
    }
    useremailId.className = "disappear";
    return true;
}


var cityList = new Array();
cityList['-选择省份-'] = ['-选择城市-'];
cityList['北京'] = ['朝阳','东城','西城', '海淀','宣武','丰台','延庆'];
cityList['天津'] = ["和平区", "河东区", "河西区", "南开区", "河北区", "红桥区", "东丽区", "西青区", "北辰区", "津南区", "武清区", "宝坻区", "滨海新区", "静海县", "宁河县", "蓟县"];
cityList['上海'] = ["黄浦区", "卢湾区", "徐汇区", "长宁区", "静安区", "普陀区", "闸北区", "虹口区", "杨浦区", "闵行区", "宝山区", "嘉定区", "浦东新区", "金山区", "松江区", "青浦区", "奉贤区", "崇明县"];
cityList['重庆'] = ["渝中区", "大渡口区", "江北区", "南岸区", "北碚区", "渝北区", "巴南区", "长寿区", "双桥区", "沙坪坝区", "万盛区", "万州区", "涪陵区", "黔江区", "永川区", "合川区", "江津区", "九龙坡区", "南川区", "綦江县", "潼南县", "荣昌县", "璧山县", "大足县", "铜梁县", "梁平县", "开县", "忠县", "城口县", "垫江县", "武隆县", "丰都县", "奉节县","云阳县", "巫溪县", "巫山县", "石柱土家族自治县", "秀山土家族苗族自治县", "酉阳土家族苗族自治县", "彭水苗族土家族自治县"];
cityList['河北'] = ["石家庄", "唐山", "秦皇岛", "邯郸", "邢台", "保定", "张家口", "承德", "沧州", "廊坊", "衡水"];
cityList['山西'] = ["太原", "大同", "阳泉", "长治", "晋城", "朔州", "晋中", "运城", "忻州", "临汾", "吕梁"];
cityList['辽宁'] = ["沈阳", "大连", "鞍山", "抚顺", "本溪", "丹东", "锦州", "营口", "阜新", "辽阳", "盘锦", "铁岭", "朝阳", "葫芦岛"];
cityList['吉林'] = ["长春", "吉林", "四平", "辽源", "通化", "白山", "松原", "白城", "延边朝鲜族自治州"];
cityList['黑龙江'] = ["哈尔滨", "齐齐哈尔", "鹤岗", "双鸭山", "鸡西", "大庆", "伊春", "牡丹江", "佳木斯", "七台河", "黑河", "绥化", "大兴安岭"];
cityList['江苏'] = ["南京", "苏州", "无锡", "常州", "镇江", "南通", "泰州", "扬州", "盐城", "连云港", "徐州", "淮安", "宿迁"];
cityList['浙江'] = ["杭州", "宁波", "温州", "嘉兴", "湖州", "绍兴", "金华", "衢州", "舟山", "台州", "丽水"];
cityList['安徽'] = ["合肥", "芜湖", "蚌埠", "淮南", "马鞍山", "淮北", "铜陵", "安庆", "黄山", "滁州", "阜阳", "宿州", "巢湖", "六安", "亳州", "池州", "宣城"];
cityList['福建'] = ["福州", "厦门", "莆田", "三明", "泉州", "漳州", "南平", "龙岩", "宁德"];
cityList['江西'] = ["南昌", "景德镇", "萍乡", "九江", "新余", "鹰潭", "赣州", "吉安", "宜春", "抚州", "上饶"];
cityList['山东'] = ["烟台", "日照", "青岛", "淄博", "枣庄", "东营", "潍坊", "济宁", "泰安", "威海", "莱芜", "临沂", "德州", "聊城", "滨州", "菏泽", "济南"];
cityList['河南'] = ["郑州", "开封", "洛阳", "平顶山", "安阳", "鹤壁", "新乡", "焦作", "濮阳", "许昌", "漯河", "三门峡", "南阳", "商丘", "信阳", "周口", "驻马店"];
cityList['湖北'] = ["武汉", "黄石", "十堰", "荆州", "宜昌", "襄樊", "鄂州", "荆门", "孝感", "黄冈", "咸宁", "随州", "恩施"];
cityList['湖南'] = ["长沙", "株洲", "湘潭", "衡阳", "邵阳", "岳阳", "常德", "张家界", "益阳", "郴州", "永州", "怀化", "娄底", "湘西"];
cityList['广东'] = ["广州", "深圳", "珠海", "汕头", "韶关", "佛山", "江门", "湛江", "茂名", "肇庆", "惠州", "梅州", "汕尾", "河源", "阳江", "清远", "东莞", "中山", "潮州", "揭阳", "云浮"];
cityList['海南'] = ["海口", "三亚"];
cityList['四川'] = ["成都", "自贡", "攀枝花", "泸州", "德阳", "绵阳", "广元", "遂宁", "内江", "乐山", "南充", "眉山", "宜宾", "广安", "达州", "雅安", "巴中", "资阳", "阿坝", "甘孜", "凉山"];
cityList['贵州'] = ["贵阳", "六盘水", "遵义", "安顺", "铜仁", "毕节", "黔西南", "黔东南", "黔南"];
cityList['云南'] = ["昆明", "曲靖", "玉溪", "保山", "昭通", "丽江", "普洱", "临沧", "德宏", "怒江", "迪庆", "大理", "楚雄", "红河", "文山", "西双版纳"];
cityList['陕西'] = ["西安", "铜川", "宝鸡", "咸阳", "渭南", "延安", "汉中", "榆林", "安康", "商洛"];
cityList['甘肃'] = ["兰州", "嘉峪关", "金昌", "白银", "天水", "武威", "酒泉", "张掖", "庆阳", "平凉", "定西", "陇南", "临夏", "甘南"];
cityList['青海'] = ["西宁", "海东", "海北", "海南", "黄南", "果洛", "玉树", "海西"];
cityList['内蒙古'] = ["呼和浩特", "包头", "乌海", "赤峰", "通辽", "鄂尔多斯", "呼伦贝尔", "巴彦淖尔", "乌兰察布", "锡林郭勒盟", "兴安盟", "阿拉善盟"];
cityList['广西'] = ["南宁", "柳州", "桂林", "梧州", "北海", "防城港", "钦州", "贵港", "玉林", "百色", "贺州", "河池", "来宾", "崇左"];
cityList['西藏'] = ["拉萨", "那曲", "昌都", "林芝", "山南", "日喀则", "阿里"];
cityList['宁夏'] = ["银川", "石嘴山", "吴忠", "固原", "中卫"];
cityList['新疆维吾尔'] = ["乌鲁木齐", "克拉玛依", "吐鲁番", "哈密", "和田", "阿克苏", "喀什", "克孜勒苏", "巴音郭楞", "昌吉", "博尔塔拉", "伊犁", "塔城", "阿勒泰"];
cityList['香港'] = ["香港岛", "九龙东", "九龙西", "新界东", "新界西"];
cityList['澳门'] = ["澳门半岛", "离岛"];
cityList['台湾'] = ["台北", "高雄", "基隆", "新竹", "台中", "嘉义", "台南市"]


function changeCity(){
    var province=document.form1.selProvince;
    var city=document.form1.selCity;
    city.options.length=0;
    for (var i in cityList){
        if (i === province.value){
            for (var j in cityList[i]){
                city.add(new Option(cityList[i][j],cityList[i][j]),null);
            }
        }
    }
}

function allCity(){
    var province=document.form1.selProvince;
    for (var i in cityList){
        province.add(new Option(i, i),null);
    }
    changeCity()
}
window.onload=allCity;
