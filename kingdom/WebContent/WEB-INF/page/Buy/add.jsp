<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>智慧商贸
新建进货单    </title>
    <script src="/Content/jquery-easyui/jquery-1.7.2.min.js?v2.9.5" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/Content/themes/default/css/style.css?v2.9.5" />
    <link rel="stylesheet" type="text/css" href="/Content/jquery-easyui/themes/default/easyui.css?v2.9.5" />
    <link rel="stylesheet" type="text/css" href="/Content/jquery-easyui/themes/icon.css?v2.9.5" />
    <script src="/Scripts/jquery.validate-1.11.1.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/jquery.validate.unobtrusive.min.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/modernizr-1.7.min.js?v2.9.5" type="text/javascript"></script>
    <script src="/Content/My97DatePicker/WdatePicker.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/PropertyManager.js?v2.9.5" type="text/javascript"></script> 
    <script src="/Scripts/SelectProducts.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/GetState.js?v2.9.5" type="text/javascript"></script>
    <script src="/Content/jquery-easyui/jquery.easyui.min.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/PERM.js?2013?v2.9.5" type="text/javascript"></script>
    <script type="text/javascript" src="/Scripts/jquery.unobtrusive-ajax.min.js?v2.9.5"></script>
    <script src="/Scripts/MVCPage.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/jquery_validator_message_cn.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/PageLoading.js?v2.9.5" type="text/javascript"></script>
    <script src="/Scripts/ChinesePY.js?v2.9.5" type="text/javascript"></script> 
    <!--PNG透明-->
    <!--[if lte IE 6]>
    <script src="/Scripts/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
        <script type="text/javascript">
            DD_belatedPNG.fix('*');
        </script>
    <![endif]-->
</head>
<body>
    <div id="loading"></div>
    <table style="min-width: 882px;" width="100%" border="0" height="610" cellspacing="0" cellpadding="0">
        <tr>
            <td valign="top" bgcolor="#e6e6e8" class="main">
                <script language="javascript" src="/Scripts/CheckActivX.js" charset="gb2312"></script>
<script src="/Scripts/jquery.autocomplete.min.js" type="text/javascript"></script> 
<script type="text/javascript">
    //返回
    function btnReturn() {
        window.location.href = "/Buy/List";
    }
</script>
<style type="text/css">
    .htd {
        background-color: #fdf7f7;
        text-align: center;
    }
</style>
<form action="/Buy/Save" method="post"><input data-val="true" data-val-required="The BuyId field is required." id="BuyId" name="BuyId" type="hidden" value="00000000-0000-0000-0000-000000000000" /><input data-val="true" data-val-number="字段 IsToList 必须是一个数字。" data-val-required="The IsToList field is required." id="IsToList" name="IsToList" type="hidden" value="0" /><input data-val="true" data-val-number="字段 IsPrint 必须是一个数字。" data-val-required="The IsPrint field is required." id="IsPrint" name="IsPrint" type="hidden" value="0" /><input id="IsOpenProductSN" name="IsOpenProductSN" type="hidden" value="1" />    <table width="100%" border="0" cellspacing="0" cellpadding="0" height="500">
        <tr>
            <td valign="top">
                <div class="buttonArea">
                    <div class="left">
                        <a class="button blueButton" onclick="SaveData();">保存并新增</a><a class="button" onclick="SaveDataToList();">保存</a>
                    </div>
                    <!-- left -->
                    <div class="right">
                        <a class="button greenButton" onclick="parent.childAddTab('进货历史','/Buy/List','慧管货')">历史单据</a>
                    </div>
                    <!-- right -->
                </div>
                <!-- buttonArea -->
                <div class="clear height10"></div>
                <div class="shadowBoxWhite receipts">
                    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="title">
                        <tr>
                            <td width="30%" height="50">&nbsp;</td>
                            <td width="40%" align="center" valign="top" class="text">商品进货单</td>
                            <td width="30%" align="right" valign="bottom" class="font999" style="padding-bottom: 20px;">单据编号：<input class="codeEdit" id="BuyNo" name="BuyNo" onchange="calBuyNo()" type="text" value="JHD20140219002" /></td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tr>
                            <td width="40">供应商</td>
                            <td width="60"><select class="easyui-combobox" data-val="true" data-val-required="The 供应商 field is required." id="SupplierId" name="SupplierId" style="width:200px"><option value="22340400-f2aa-43e5-8aee-59ef2eb8f98c">默认供应商</option>
<option value="ba720e4a-cc90-4fee-91fa-47b56a977561">华润食品</option>
</select></td>
                            <td width="60" align="right">入库仓库&nbsp;</td>
                            <td width="120"><select id="WarehouseId" name="WarehouseId" style="width:120px"><option value="ee7eac04-d829-4013-bc1b-f2220ee9618c">北二门</option>
<option selected="selected" value="aa1da1ab-d688-4758-8391-1063b10902ca">默认仓库</option>
</select></td>
                            <td width="60" align="right">是否打印</td>
                            <td width="60">
                                <input type="checkbox" name="chkPrint" id="chkPrint" checked="checked" /></td>
                                <td width="60" align="right">免税</td>
                                <td width="20" align="left">
                                    <input type="checkbox" name="chkNoTaxRate" id="chkNoTaxRate" onclick="chgNoTaxRate()" value="1" /></td>
                            <td width="60" align="right">经手人</td>
                            <td width="60"><select class="inputSelect" data-val="true" data-val-required="请选择进货员" id="BuyUser" name="BuyUser"><option selected="selected" value="6c5ac605-a8ce-4681-a955-7300730c6907">管理员</option>
<option value="f90a49e6-468b-4667-9c27-c2dbdc6a4efc">张坤坤</option>
</select></td>
                            <td width="60" align="right">业务日期</td>
                            <td width="60">
                                <input id="TheLstBalDate" name="TheLstBalDate" type="hidden" value="1900-01-01" />
                                <input class="inputText" data-val="true" data-val-required="请选择进货日期" id="BuyDate" name="BuyDate" onClick="WdatePicker({minDate:&#39;#F{$dp.$D(\&#39;TheLstBalDate\&#39;)}&#39;})" readonly="true" size="10" type="text" value="2014-02-19" /></td>
                        </tr>

                    </table>
                    <div class="clear height10"></div>
                    <div class="tableDiv">
                        <table width="100%" border="0" cellspacing="1" cellpadding="5" id="tabProducts">
                            <tr>
                                <th width="60" height="60" align="center" valign="middle">序号</th>
                                <th align="left" valign="middle">商品名称/规格</th>
                                <th width="150" align="center" valign="middle">商品编号</th>
                                <th width="60" align="center" valign="middle">单价(元)</th>
                                <th width="65" align="center" valign="middle">数量</th>
                                <th width="50" align="center" valign="middle">单位</th>
                                <th width="100" align="center" valign="middle">
                                    <p>金额(元)</p>
                                </th>
                                    <th width="60" align="center" valign="middle">税率(%)</th>
                                    <th width="100" align="center" valign="middle">
                                        <p>税后金额(元)</p>
                                    </th>
                                <th width="80" align="left" valign="middle">备注</th>
                            </tr>
                            <tr id="trTmp" style="display: none;">
                                <td align="center" valign="middle" bgcolor="#FFFFFF">
                                    <span id="orderdiv" class="num"></span>
                                    <span class="actionArea"><a href="javascript:;" class="plusLite" onclick="addRow(this);InitOrder();"></a><a href="javascript:;" class="delLite" onclick="deleteRow(this);"></a></span></td>
                                <td align="left" valign="middle" bgcolor="#FFFFFF">
                                    <input type="hidden" name="hidLendDetailId" />
                                    <input type="hidden" name="hidSerialId" />
                                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="chose">
                                        <tr>
                                            <td>
                                                <input style="text-align: left;" type="text" class="receiptsInputText" autocomplete="off" name="showProductName" /></td>
                                            <td width="50" align="right"><a class="choseGoods" style="display: none;" onclick="SelectWareProductByBusi(this.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode,'Buy',$('#WarehouseId').find('option:selected').val(),$('#IsOpenProductSN').val())">选择</a></td>
                                        </tr>
                                    </table>
                                </td>
                                <td align="left" valign="middle" bgcolor="#FFFFFF">
                                    <input type="hidden" name="hidProductId" />
                                    <input type="hidden" name="hidRowId" />
                                    <input type="hidden" name="hidSerialNo" onchange="SetWarehouseStock(this)" />
                                    <input type="hidden" name="hidSerialRemarks" />
                                    <input type="text" class="receiptsInputText" autocomplete="off" name="showProductCode" style="width: 140px" />
                                </td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF">
                                    <input type="text" class="receiptsInputText" name="BuyPrice" onchange="calSaleAmt(this)" style="width: 50px" /></td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF">
                                    <input type="text" class="receiptsInputText" name="BuyCount" onchange="calSaleAmt(this)" style="width: 40px" />
                                    <a href="javascript:;" name="aSingleSN" style="display: none;" onclick="openSn(this.parentNode.parentNode)" class="sn"></a>
                                    <div class="newTip" style="margin: 0px 0 0 37px; *margin: 20px 0 0 -20px;display:none;">
                                        <div class="angle"></div>
                                        <div class="bg">
                                            <span>点击图标可以查看和编辑详细的序列号</span><br />
                                            <a href="javascript:;" onclick="$(this).parent().parent().hide()" class=" button blueButton">我知道了</a>
                                        </div>
                                    </div>
                                </td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF">
                                    <input type="text" class="receiptsInputText" name="UnitName" style="width: 40px" />
                                    <input type="hidden" name="HidUnitCode" />
                                    <input type="hidden" name="HidIsDecimal" value="1" /></td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF">
                                    <input type="text" class="receiptsInputText" name="EachBuyAmt" onchange="calBuyPrice(this)" style="width: 90px" /></td>
                                    <td align="center" valign="middle" style="width: 60px" bgcolor="#FFFFFF">
                                        <input type="text" class="receiptsInputText" name="EachTaxRate" onchange="calSaleAmt(this)" style="width: 60px" /></td>
                                    <td align="center" valign="middle" style="width: 90px" bgcolor="#FFFFFF">
                                        <input type="text" class="receiptsInputText" name="EachAfterTaxAmt" onchange="calCountAmt()" readonly="readonly" style="width: 90px" /></td>
                                <td width="80" align="left" valign="middle" bgcolor="#FFFFFF">
                                    <input style="text-align: left; width: 70px" type="text" class="receiptsInputText" name="EachBuyRemark" /></td>
                            </tr>
                            <tr id="total">
                                <td align="center" valign="middle" bgcolor="#FFFFFF" class="font14">合计</td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF"></td>
                                <td align="left" valign="middle" bgcolor="#FFFFFF"></td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF"></td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF"><span id="spanTotalCount"></span></td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF"></td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF"><span class="fontRed">￥</span><span class=" font18 fontRed">
                                    <input data-val="true" data-val-number="字段 金额 必须是一个数字。" data-val-range="数值超出合理的范围" data-val-range-max="9999999999" data-val-range-min="0" data-val-regex="金额格式不正确。" data-val-regex-pattern="^(-?\d+)(\.\d+)?$" data-val-required="The 金额 field is required." id="BuyAmt" name="BuyAmt" onclick="$(this).blur()" readonly="true" size="12" style="width:70px;color:Red;background-color:transparent;" type="text" value="0" /></span></td>
                                    <td align="center" valign="middle" bgcolor="#FFFFFF"></td>
                                    <td align="center" valign="middle" bgcolor="#FFFFFF"><span class="fontRed">￥</span><span id="spanTaxAmt" class=" font18 fontRed">0.00</span></td>
                                <td align="center" valign="middle" bgcolor="#FFFFFF"></td>
                            </tr>
                            <tr>

                                    <td valign="middle" align="center" bgcolor="#FFFFFF" class="font14">备注</td>
                                    <td colspan="2" bgcolor="#FFFFFF">
                                        <textarea class="receiptsInputText textl" cols="20" id="BuyRemark" name="BuyRemark" rows="2" style="height:40px;">
</textarea>　</td>
                                    <td colspan="6" bgcolor="#FFFFFF">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="3">
                                            <tr style="display: none;">
                                                <td>折 扣 率：</td>
                                                <td>
                                                    <input class="inputBorder" data-val="true" data-val-number="字段 DiscountRate 必须是一个数字。" data-val-range="数值超出合理的范围" data-val-range-max="9999999999" data-val-range-min="0" data-val-regex="折扣率格式不正确。" data-val-regex-pattern="^(-?\d+)(\.\d+)?$" id="DiscountRate" name="DiscountRate" onchange="calDiscountAmt()" size="8" type="text" value="100" />
                                                    %</td>
                                                <td>折后应付：</td>
                                                <td>
                                                    <input class="inputBorder" data-val="true" data-val-number="字段 DisCountAmt 必须是一个数字。" data-val-range="数值超出合理的范围" data-val-range-max="9999999999" data-val-range-min="0" data-val-regex="折后应付金额格式不正确。" data-val-regex-pattern="^(-?\d+)(\.\d+)?$" id="DisCountAmt" name="DisCountAmt" onchange="calDiscountRate()" size="8" type="text" value="0" />
                                                    元</td>
                                            </tr>
                                            <tr>
                                                <td align="right">结算方式：</td>
                                                <td>
                                                    <select data-val="true" data-val-required="请选择付款账户" id="AccountId" name="AccountId" style="width:100px;"><option value="8ba2c9e4-2348-436b-bb6b-17576832debb">支票</option>
<option selected="selected" value="b0b8efc7-5b5f-4b81-b814-1d8be2206f01">现金</option>
</select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">其他费用：</td>
                                                <td>
                                                    <input class="inputBorder" data-val="true" data-val-number="字段 OtherFee 必须是一个数字。" data-val-required="The OtherFee field is required." id="OtherFee" name="OtherFee" onchange="calDiscountAmt()" size="8" type="text" value="0" />
                                                    元</td>
                                                <td width="60" align="right">税额：</td>
                                                <td width="60">
                                                   <span id="spanTotalTaxAmt">0.00</span>元</td>
                                                <td align="right">应付金额：</td>
                                                <td>
                                                    <span id="spanFAReceAmt">0</span>
                                                    <input data-val="true" data-val-number="字段 FAReceAmt 必须是一个数字。" data-val-range="数值超出合理的范围" data-val-range-max="9999999999" data-val-range-min="0" data-val-regex="应付金额格式不正确。" data-val-regex-pattern="^(-?\d+)(\.\d+)?$" id="FAReceAmt" name="FAReceAmt" type="hidden" value="0" />
                                                    元</td>
                                            </tr>
                                        </table>
                                    </td>
                                <td bgcolor="#FFFFFF" width="80"><span class="font16 fontOrange" style="line-height: 25px;">实付金额：</span>
                                    <input class="inputBorder" data-val="true" data-val-number="字段 RealPayAmt 必须是一个数字。" id="RealPayAmt" name="RealPayAmt" size="10" type="text" value="0" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <input type="hidden" name="hidProductsSn" />
                    <!-- tableDiv -->
                    <div class="bottomButtonArea">
                        <div class="left font999">制单人：管理员&nbsp;&nbsp;&nbsp;&nbsp;制单时间：2014-02-19 16:45:23</div>
                        <div class="right">
                            <a class="button" onclick="closethistab('新增进货');">取消</a>
                            <a class="button" onclick="SaveDataToList();">保存</a>
                            <a class="button blueButton" onclick="SaveData();">保存并新增</a>

                        </div>
                    </div>
                    <!-- buttonArea -->
                </div>
                <!-- receipts -->
            </td>
        </tr>
    </table>  
</form><script type="text/javascript">
    var tempJsons = [];
    $(document).ready(function () {
        var buyId = "00000000-0000-0000-0000-000000000000";
        if (buyId == '00000000-0000-0000-0000-000000000000') {
            //验证权限
            var isAudit = checkPermByCode('PERM_ADD');
            if (!isAudit) {
                Dialog.alert("非常抱歉，您没有权限访问该页面!", function () {
                    window.location.href = "./List";
                });
                return;
            }
            //验证帐套状态
            var sobState = GetSOBState(false);
            if (sobState == "2") {
                Dialog.alert("该账套已封账，不能操作！", function () {
                    window.location.href = "./List";
                });
                return;
            } else
                if (sobState == "3") {
                    unLockState();
                    return;
                } else if (sobState != "1") {
                    Dialog.alert("当前帐套不是开账状态！请先开账！", function () {
                        window.location.href = "./List";
                    })
                    return;
                }
            //if (!GetSOBState(false)) {
            //    Dialog.alert("当前帐套不是开账状态！请先开账！", function () {
            //        window.location.href = "./List";
            //    })
            //    return;
            //}
            //新增时默认添加一行
            addRow();
            addRow();
            addRow();
            addRow();
            addRow();
            addRow();
        }
        else {
            $("td[name='tdDelete']").hide();
            $("input").attr("disabled", "true");
            $("select").attr("disabled", "true");
        }
        InitOrder();

        //打印
        var rememberPrint = "0";
        var isPrint = requestUrlPara("IsPrint");
        if (isPrint == 1) {
            $("#chkPrint").attr("checked", "checked");
        } else {
            if (rememberPrint == "1") {
                $("#chkPrint").attr("checked", "checked");
            } else if (rememberPrint == "0") {
                $("#chkPrint").removeAttr("checked");
            }
        }
        var printBuyId = requestUrlPara("BuyId");
        var isToList = requestUrlPara("IsToList");
        if (isToList == 1) {
            parent.childAddTab('进货历史', '/Buy/List?IsPrint=' + isPrint + '&BuyId=' + printBuyId + "&IsToList=" + isToList, '慧管货');
        } else
            if (isPrint == 1) {
                OpenPrint('/Buy/Print?BuyId=' + printBuyId);
            } 
    });


    // 选择商品点击OK处理填充数据
    function SelectProductOK(tempJson, obj) {
        tempJsons = tempJson;
        var i = 0, j = 0;
        var serial = "1";
        if (obj != null && tempJson.length > 0) {
            $(obj).children('td').eq(1).find('input[name="showProductName"]').val(tempJson[i]["Name"] + "/" + tempJson[i]["Form"]);
            $(obj).children('td').eq(1).find('input[name="showProductName"]').attr("readonly", "readonly");
            $(obj).children('td').eq(1).find('input[name="showProductName"]').attr("unselectable", "on");
            $(obj).children('td').eq(2).find('input[name="showProductCode"]').val(tempJson[i]["Code"]);
            $(obj).children('td').eq(2).find('input[name="showProductCode"]').attr("readonly", "readonly");
            $(obj).children('td').eq(2).find('input[name="showProductCode"]').attr("unselectable", "on");
            $(obj).children('td').eq(2).find('input[name="hidProductId"]').val(tempJson[i]["ID"]);
            $(obj).children('td').eq(2).find('input[name="hidRowId"]').val(tempJson[i]["RowId"]);
            if (tempJson[i]["RowId"] != null) {
                $(obj).children('td').eq(2).find('input[name="hidSerialNo"]').attr("id", "sno" + tempJson[i]["RowId"]);
                $(obj).children('td').eq(2).find('input[name="hidSerialRemarks"]').attr("id", "snr" + tempJson[i]["RowId"]);
            }
            $(obj).children('td').eq(3).find('input[name="BuyPrice"]').val(tempJson[i]["CostPrice"]);
            $(obj).children('td').eq(5).find('input[name="UnitName"]').val(tempJson[i]["Unit"]);
            $(obj).children('td').eq(5).find('input[name="UnitName"]').attr("readonly", "readonly");
            $(obj).children('td').eq(5).find('input[name="UnitName"]').attr("unselectable", "on");
            $(obj).children('td').eq(5).find('input[name="HidUnitCode"]').val(tempJson[i]["UnitCode"]);
            $(obj).children('td').eq(5).find('input[name="HidIsDecimal"]').val(tempJson[i]["IsDecimal"]);
            var isTaxRate = document.getElementsByName("chkNoTaxRate")[0];
            if (isTaxRate != null && !isTaxRate.checked) {
                $(obj).children('td').eq(7).find('input[name="EachTaxRate"]').val(Number(0.3000).toFixed(2));
            }
            else {
                $(obj).children('td').eq(7).find('input[name="EachTaxRate"]').val("0.00");
            }
            if (serial == "1" && tempJson[i]["SNManage"] != "0") {
                $(obj).children('td').eq(4).find('a[name="aSingleSN"]').show();
                parent.showSnTip($(obj), 'buy');
            } else {
                $(obj).children('td').eq(4).find('a[name="aSingleSN"]').hide();
            }
            if (serial == "1" && tempJson[i]["SNManage"] == "1") {
                $(obj).children('td').eq(4).find('input[name="BuyCount"]').attr("readonly", "readonly");
                $(obj).children('td').eq(4).find('input[name="BuyCount"]').attr("unselectable", "on");
                $(obj).children('td').eq(4).find('input[name="BuyCount"]').val(0).change();
            }
            else {
                $(obj).children('td').eq(4).find('input[name="BuyCount"]').removeAttr("readonly");
                $(obj).children('td').eq(4).find('input[name="BuyCount"]').removeAttr("unselectable");
                $(obj).children('td').eq(4).find('input[name="BuyCount"]').val(1).change();
            }

            i++;
        }
        for (; i < tempJson.length; i++) {
            var rows = $("#tabProducts tr");
            for (; j < rows.length; j++) {
                if (i >= tempJson.length) break;
                if (rows[j].rowIndex > obj.rowIndex && $(rows[j]).children('td').eq(2).find('input[name="hidProductId"]').length == 1 && $(rows[j]).attr("id") != "trTmp") {
                    $(rows[j]).children('td').eq(1).find('input[name="showProductName"]').val(tempJson[i]["Name"] + "/" + tempJson[i]["Form"]);
                    $(rows[j]).children('td').eq(1).find('input[name="showProductName"]').attr("readonly", "readonly");
                    $(rows[j]).children('td').eq(1).find('input[name="showProductName"]').attr("unselectable", "on");
                    $(rows[j]).children('td').eq(2).find('input[name="showProductCode"]').val(tempJson[i]["Code"]);
                    $(rows[j]).children('td').eq(2).find('input[name="showProductCode"]').attr("readonly", "readonly");
                    $(rows[j]).children('td').eq(2).find('input[name="showProductCode"]').attr("unselectable", "on");
                    $(rows[j]).children('td').eq(2).find('input[name="hidProductId"]').val(tempJson[i]["ID"]);
                    $(rows[j]).children('td').eq(2).find('input[name="hidRowId"]').val(tempJson[i]["RowId"]);
                    if (tempJson[i]["RowId"] != null) {
                        $(rows[j]).children('td').eq(2).find('input[name="hidSerialNo"]').attr("id", "sno" + tempJson[i]["RowId"]);
                        $(rows[j]).children('td').eq(2).find('input[name="hidSerialRemarks"]').attr("id", "snr" + tempJson[i]["RowId"]);
                    }
                    $(rows[j]).children('td').eq(3).find('input[name="BuyPrice"]').val(tempJson[i]["CostPrice"]);
                    $(rows[j]).children('td').eq(5).find('input[name="UnitName"]').val(tempJson[i]["Unit"]);
                    $(rows[j]).children('td').eq(5).find('input[name="UnitName"]').attr("readonly", "readonly");
                    $(rows[j]).children('td').eq(5).find('input[name="UnitName"]').attr("unselectable", "on");
                    $(rows[j]).children('td').eq(5).find('input[name="HidUnitCode"]').val(tempJson[i]["UnitCode"]);
                    $(rows[j]).children('td').eq(5).find('input[name="HidIsDecimal"]').val(tempJson[i]["IsDecimal"]);
                    var isTaxRate = document.getElementsByName("chkNoTaxRate")[0];
                    if (isTaxRate != null && !isTaxRate.checked) {
                        $(rows[j]).children('td').eq(7).find('input[name="EachTaxRate"]').val(Number(0.3000).toFixed(2));
            }
            else {
                        $(rows[j]).children('td').eq(7).find('input[name="EachTaxRate"]').val("0.00");
            }
                    if (serial == "1" && tempJson[i]["SNManage"] != "0") {
                        $(rows[j]).children('td').eq(4).find('a[name="aSingleSN"]').show();
                        parent.showSnTip($(obj), 'buy');
                    } else {
                        $(rows[j]).children('td').eq(4).find('a[name="aSingleSN"]').hide();
                    }
                    if (serial == "1" && tempJson[i]["SNManage"] == "1") {
                        $(rows[j]).children('td').eq(4).find('input[name="BuyCount"]').attr("readonly", "readonly");
                        $(rows[j]).children('td').eq(4).find('input[name="BuyCount"]').attr("unselectable", "on");
                        $(rows[j]).children('td').eq(4).find('input[name="BuyCount"]').val(0).change();
                    }
                    else {
                        $(rows[j]).children('td').eq(4).find('input[name="BuyCount"]').removeAttr("readonly");
                        $(rows[j]).children('td').eq(4).find('input[name="BuyCount"]').removeAttr("unselectable");
                        $(rows[j]).children('td').eq(4).find('input[name="BuyCount"]').val(1).change();
                    }
                    i++;
                }
            }
            if (i < tempJson.length) {
                var trTmp = $("#trTmp").clone();
                trTmp.attr("id", "");
                trTmp.show();
                trTmp.children('td').eq(1).find('input[name="showProductName"]').val(tempJson[i]["Name"] + "/" + tempJson[i]["Form"]);
                trTmp.children('td').eq(1).find('input[name="showProductName"]').attr("readonly", "readonly");
                trTmp.children('td').eq(1).find('input[name="showProductName"]').attr("unselectable", "on");
                trTmp.children('td').eq(2).find('input[name="showProductCode"]').val(tempJson[i]["Code"]);
                trTmp.children('td').eq(2).find('input[name="showProductCode"]').attr("readonly", "readonly");
                trTmp.children('td').eq(2).find('input[name="showProductCode"]').attr("unselectable", "on");
                trTmp.children('td').eq(2).find('input[name="hidProductId"]').val(tempJson[i]["ID"]);
                trTmp.children('td').eq(2).find('input[name="hidRowId"]').val(tempJson[i]["RowId"]);
                if (tempJson[i]["RowId"] != null) {
                    trTmp.children('td').eq(2).find('input[name="hidSerialNo"]').attr("id", "sno" + tempJson[i]["RowId"]);
                    trTmp.children('td').eq(2).find('input[name="hidSerialRemarks"]').attr("id", "snr" + tempJson[i]["RowId"]);
                }
                trTmp.children('td').eq(3).find('input[name="BuyPrice"]').val(tempJson[i]["CostPrice"]);
                trTmp.children('td').eq(5).find('input[name="UnitName"]').val(tempJson[i]["Unit"]);
                trTmp.children('td').eq(5).find('input[name="UnitName"]').attr("readonly", "readonly");
                trTmp.children('td').eq(5).find('input[name="UnitName"]').attr("unselectable", "on");
                trTmp.children('td').eq(5).find('input[name="HidUnitCode"]').val(tempJson[i]["UnitCode"]);
                trTmp.children('td').eq(5).find('input[name="HidIsDecimal"]').val(tempJson[i]["IsDecimal"]);
                var isTaxRate = document.getElementsByName("chkNoTaxRate")[0];
                if (isTaxRate != null && !isTaxRate.checked) {
                    trTmp.children('td').eq(7).find('input[name="EachTaxRate"]').val(Number(0.3000).toFixed(2));
                    }
                    else {
                    trTmp.children('td').eq(7).find('input[name="EachTaxRate"]').val("0.00");
                    }
                if (serial == "1" && tempJson[i]["SNManage"] != "0") {
                    trTmp.children('td').eq(4).find('a[name="aSingleSN"]').show();
                    parent.showSnTip($(obj), 'buy');
                } else {
                    trTmp.children('td').eq(4).find('a[name="aSingleSN"]').hide();
                }
                if (serial == "1" && tempJson[i]["SNManage"] == "1") {
                    trTmp.children('td').eq(4).find('input[name="BuyCount"]').attr("readonly", "readonly");
                    trTmp.children('td').eq(4).find('input[name="BuyCount"]').attr("unselectable", "on");
                    trTmp.children('td').eq(4).find('input[name="BuyCount"]').val(0).change();
                }
                else {
                    trTmp.children('td').eq(4).find('input[name="BuyCount"]').removeAttr("readonly");
                    trTmp.children('td').eq(4).find('input[name="BuyCount"]').removeAttr("unselectable");
                    trTmp.children('td').eq(4).find('input[name="BuyCount"]').val(1).change();
                }

                trTmp.insertBefore($("#trTmp"));
                //单行计算金额
                //calSaleAmt(trTmp.children('td').eq(1).find('input'));
            }
        }
        if ($("#tabProducts tr[id!='trTmp']").find("input:text[autoComplete='off']").length < 1) {
            addRow();
        }
        //计算总金额
        calCountAmt();
        InitOrder();
    }
    //添加行
    function addRow(obj) {
        var trTmp = $("#trTmp").clone();
        var tempRow = document.getElementById("trTmp");
        var temRowIndex = 0;
        trTmp.attr("id", "");
        trTmp.show();
        if (obj == null) {
            trTmp.insertBefore($("#trTmp"));
            obj = trTmp;
            obj.rowIndex = tempRow.rowIndex - 1;
        }
        else {
            trTmp.insertAfter(obj.parentNode.parentNode.parentNode);
            temRowIndex = obj.parentNode.parentNode.parentNode.rowIndex + 1;
            obj = trTmp;
            obj.rowIndex = temRowIndex;
        }
        var autoCompleteTextbox = trTmp.find("input:text[autoComplete='off']");
        if (!!autoCompleteTextbox) {
            //智能提示
            var productheader = { ProductCode: "商品编号", ProductName: "商品名称", Barcode: "条形码" };
            autoCompleteTextbox.each(function 
                () {
                //$(this).combogrid({
                //    panelWidth: 450,
                //    value: '',
                //    idField: 'ProductId',
                //    textField: 'ProductName',
                //    url: '/Shared/QueryProduct',
                //    columns: [[
                //        { field: 'ProductCode', title: '商品编号', width: 150 },
                //        { field: 'ProductName', title: '商品名称', width: 250 }
                //    ]],
                //    onChange: function (newValue, oldValue) {
                //        $.ajax({
                //            dataType: "json",
                //            data: {
                //                productId: newValue
                //            },
                //            url: "/Shared/QueryProductById/",
                //            cache: false,
                //            type: "post",
                //            success: function (o) {
                //                var jsonn = [];
                //                var value = {
                //                    "ID": o.ProductId,
                //                    "Code": o.ProductCode,
                //                    "Name": o.ProductName,
                //                    "Form": o.From,
                //                    "Class": o.Class,
                //                    "Unit": o.Unit,
                //                    "Store": o.Store,
                //                    "CostPrice": o.CostPrice,
                //                    "SalePrice": o.SalePrice,
                //                    "UnitCode": o.UnitCode,
                //                    "IsDecimal": o.IsDecimal,
                //                    "LowSalePrice": o.LowSalePrice,
                //                    "HigSalePrice": o.HigSalePrice
                //                };
                //                jsonn.push(value);
                //                SelectProductOK(jsonn, obj);
                //            },
                //            error: function () {

                //            }
                //        });
                //    }
                //});

                $(this).autoComplete({
                    header: productheader,
                    url: "/shared/queryproduct?WarehouseId=" + $('#WarehouseId').find('option:selected').val(),
                    width: 400,
                    selected: function (o) {
                        var jsonn = [];
                        var value = {
                            "ID": o.ProductId,
                            "Code": o.ProductCode,
                            "Name": o.ProductName,
                            "Form": o.From,
                            "Class": o.Class,
                            "Unit": o.Unit,
                            "Store": o.Store,
                            "CostPrice": o.CostPrice,
                            "SalePrice": o.SalePrice,
                            "UnitCode": o.UnitCode,
                            "IsDecimal": o.IsDecimal,
                            "LowSalePrice": o.LowSalePrice,
                            "HigSalePrice": o.HigSalePrice,
                            "SNManage": o.SNManage,
                            "RowId": guidGenerator()
                        };
                        jsonn.push(value);
                        SelectProductOK(jsonn, obj);
                        if ($(obj).next().find("span").html() == '') {
                            addRow(); InitOrder();
                        }
                        $(obj).next().find("input[name='showProductName']").focus();
                        //打开序列号管理
                        if (jsonn[0]["SNManage"] == "1") {
                            SingleSelectSerialNo($(obj).find('input[name=\'hidProductId\']').val(), $(obj).find('input[name=\'hidRowId\']').val(), $('#WarehouseId').find('option:selected').val(), 'Buy');
                        }
                    }
                });
            });

        }
        $("#tabProducts tr").mouseover(function () {
            $(this).find('.choseGoods').show();
        }).mouseout(function () {
            $(this).find('.choseGoods').hide();
        })
    }

    //删除行
    function deleteRow(obj) {

        obj.parentNode.parentNode.parentNode.parentNode.removeChild(obj.parentNode.parentNode.parentNode);

        if ($("#tabProducts tr[id!='trTmp']").find("input:text[autoComplete='off']").length <= 1) {
            addRow();
        }
        $("#tabProducts tr[id!='trTmp']").find("input:text[autoComplete='off']").first().focus();
        //计算总金额
        calCountAmt();
        InitOrder();
    }

    //单行计算金额
    function calSaleAmt(obj) {
        //验证单位
        var unitName = $(obj).parent().parent().children('td').eq(5).find('input[name="UnitName"]').val();
        var isDecimal = $(obj).parent().parent().children('td').eq(5).find('input[type="hidden"]').val();

        //验证最低销售和最高销售价
        var lowPrice = $(obj).parent().parent().children('td').eq(9).text();
        var highPrice = $(obj).parent().parent().children('td').eq(10).text();

        var salePrice = $(obj).parent().parent().children('td').eq(3).find('input').val();
        var saleCount = $(obj).parent().parent().children('td').eq(4).find('input').val();
        //验证税率
        var isOpenTax = "1";
        var TaxRate = $(obj).parent().parent().children('td').eq(7).find('input').val();
        //序列号
        var serialNo = $(obj).parent().parent().children('td').eq(2).find("input[name='hidSerialNo']").val();

        $(obj).parent().parent().children('td').eq(6).find('input').val((Number(salePrice) * Number(saleCount)).toFixed(2));
        //验证单位
        if (isDecimal == "0" && !isInteger(saleCount)) {
            Dialog.alert('单位为 ' + unitName + ' 时， 数量必须输入整数！', function () {
                $(obj).parent().parent().children('td').eq(4).find('input').val("");
                $(obj).parent().parent().children('td').eq(4).find('input').focus();
                return;
            });
        }
        //验证最低销售和最高销售价 
        if (isNumber(lowPrice) && isNumber(salePrice) && Number(lowPrice) != 0 && Number(salePrice) < Number(lowPrice)) {
            Dialog.alert('单价不能低于最低销售价！', function () {
                $(obj).parent().parent().children('td').eq(3).find('input').val("");
                $(obj).parent().parent().children('td').eq(3).find('input').focus();
                return;
            });
        }
        if (isNumber(highPrice) && isNumber(salePrice) && Number(highPrice) != 0 && Number(salePrice) > Number(highPrice)) {
            Dialog.alert('单价不能高于最高销售价！', function () {
                $(obj).parent().parent().children('td').eq(3).find('input').val("");
                $(obj).parent().parent().children('td').eq(3).find('input').focus();
                return;
            });
        }
        if (!isNumber(saleCount)) {
            Dialog.alert("数量必须为数字");
            $(obj).parent().parent().children('td').eq(4).find('input').val("");
            $(obj).parent().parent().children('td').eq(4).find('input').focus();
            return false;
        }
        if (isOpenTax == "1") {
            //验证税率
            if (TaxRate == "" || !isNumber(TaxRate) || Number(TaxRate) < 0 || Number(TaxRate) > 100) {
                Dialog.alert('税率必须为0-100的数字！');
                $(obj).parent().parent().children('td').eq(7).find('input').val("0.00");
                $(obj).parent().parent().children('td').eq(7).find('input').focus();
                return;
            }
            if (isNumber(TaxRate) && TaxRate != "")
                $(obj).parent().parent().children('td').eq(8).find('input').val(((Number(salePrice) * Number(saleCount)) + (Number(salePrice) * Number(saleCount) * Number(TaxRate) / 100)).toFixed(2));
        }
        var serialNoArr = serialNo.split(';');
        if (Number(saleCount) < (serialNoArr.length - 1)) {
            Dialog.alert("修改后的商品数量小于添加的商品序列号，请重新修改！");
            $(obj).parent().parent().children('td').eq(2).find('input').focus();
            return false;
        }
        //计算总金额
        calCountAmt();
        $(obj).parent().parent().children('td').eq(3).find('input').val(Number(salePrice).toFixed(2));
    }



    //单行根据总金额和数量计算单价
    function calBuyPrice(obj) {
        //验证税率
        var isOpenTax = "1";
        var TaxRate = $(obj).parent().parent().children('td').eq(7).find('input').val();
        var saleCount = $(obj).parent().parent().children('td').eq(4).find('input').val();
        var saleAmt = $(obj).parent().parent().children('td').eq(6).find('input').val();
        var salePrice = 0;
        if (saleCount != "" && Number(saleCount) != 0) {
            $(obj).parent().parent().children('td').eq(3).find('input').val((Number(saleAmt) / Number(saleCount)).toFixed(2));
            salePrice = Number(saleAmt) / Number(saleCount);
        }
        if (isOpenTax == "1") {
            //验证税率
            if (TaxRate == "" || !isNumber(TaxRate) || Number(TaxRate) < 0 || Number(TaxRate) > 100) {
                Dialog.alert("税率必须为0-100的数字！");
                $(obj).parent().parent().children('td').eq(7).find('input').val("0.00");
                $(obj).parent().parent().children('td').eq(7).find('input').focus();
                return;
            }
            if (isNumber(TaxRate) && TaxRate != "")
                $(obj).parent().parent().children('td').eq(8).find('input').val(((salePrice * Number(saleCount)) + (salePrice * Number(saleCount) * Number(TaxRate) / 100)).toFixed(2));
        }
        calCountAmt();
    }

    function calCountAmt() {

        //var amtNode = $("input[name='EachBuyAmt']");
        var amtCount = 0;
        var totalCount = 0;
        var rateAmt = 0;
        var totalRateAmt = 0;
        var rows = $("#tabProducts tr");
        var isOpenTax = "1";
        for (var j = 0; j < rows.length; j++) {
            var productName = $(rows[j]).children('td').eq(1).find('input[name="showProductName"]').val();
            var eachAmt = $(rows[j]).children('td').eq(6).find('input[name="EachBuyAmt"]').val();
            var eachCount = $(rows[j]).children('td').eq(4).find('input[name="BuyCount"]').val();
            if (typeof (productName) != 'undefined' && productName != '' && typeof (eachAmt) != 'undefined' && eachAmt != '') {
                amtCount = amtCount + Number(eachAmt);
                totalCount = totalCount + Number(eachCount);
            }
            if (isOpenTax == "1") {
                var eachRate = $(rows[j]).children('td').eq(7).find('input[name="EachTaxRate"]').val();
                var eachAfterRateAmt = $(rows[j]).children('td').eq(8).find('input[name="EachAfterTaxAmt"]').val();
                if (typeof (eachAfterRateAmt) != 'undefined' && eachAfterRateAmt != '') {
                    rateAmt = rateAmt + Number(eachAfterRateAmt);
                }
                //计算总税额
                if (typeof (productName) != 'undefined' && productName != '' && typeof (eachAmt) != 'undefined' && eachAmt != '') {
                    var eachRateAmt = eachAmt * eachRate / 100;
                    if (typeof (eachRateAmt) != 'undefined' && eachRateAmt != '') {
                        totalRateAmt = totalRateAmt + Number(eachRateAmt);
                    }
                }
            }
        }
        $("#spanTotalCount").text(totalCount.toFixed(2));
        $("#BuyAmt").val(amtCount.toFixed(2));
        $("#spanTaxAmt").text(rateAmt.toFixed(2));
        $("#spanTotalTaxAmt").text(totalRateAmt.toFixed(2));
        //计算折后金额
        calDiscountAmt();
    }

    //计算折后金额
    function calDiscountAmt() {
        var otherFee = $("#OtherFee").val();
        if (!isNumber(otherFee)) {
            Dialog.alert("其他费用格式不正确");
            return;
        }
        var amtCount = $("#BuyAmt").val();
        var isOpenTax = "1";

        if (isOpenTax == "1") {
            amtCount = $("#spanTaxAmt").text();
        }

        var discountRate = 100;
        var disCountAmt = (Number(amtCount) * Number(discountRate) / 100);
        var faReceAmt = Number(otherFee) + disCountAmt;

        $("#DisCountAmt").val(disCountAmt.toFixed(2));
        $("#FAReceAmt").val(faReceAmt.toFixed(2));
        $("#spanFAReceAmt").text(faReceAmt.toFixed(2));
        $("#RealPayAmt").val(faReceAmt.toFixed(2));
    }

    //计算折扣率 默认填充本次收款
    function calDiscountRate() {
        var amtCount = $("#BuyAmt").val();
        //var discountAmt = $("#DisCountAmt").val();
        var discountAmt = 100;
        $("#DiscountRate").val((Number(discountAmt) / Number(amtCount) * 100).toFixed(2));
        $("#RealPayAmt").val($("#DisCountAmt").val());
    }
    //
    function ValidateNo(buyNo) {
        var NIVal = -1;
        $.ajax({
            dataType: "json",
            data: { buyNo: buyNo },
            cache: false,
            async: false,
            url: "/Buy/ValidateNo/?" + Math.random(),
            type: "post",
            success: function (data) {
                NIVal = data.Data;
            },
            error: function () {
                Dialog.alert("失败");
            }
        });
        return NIVal;
    }
    function calBuyNo() {
        var buyNo = $("#BuyNo").val().trim();
        if (buyNo == "") {
            Dialog.alert("请输入单据编号");
            return;
        };
        if (!CheckWord(buyNo)) {
            return;
        }
        var temp = ValidateNo(buyNo);
        if (temp == "0") {
            Dialog.alert("单据编号重复");
            return;
        }
    }
    //提交表单
    function ValidateForm() {
        var isOpenTax = "1";
        //单据编号
        if ($("#BuyNo").val().trim() == "") {
            Dialog.alert("请输入单据编号。", function () {
                $("#BuyNo").addClass("input-validation-error");
            });
            return false;
        }
        if (!CheckWord($("#BuyNo").val().trim())) {
            $("#BuyNo").addClass("input-validation-error");
            return false;
        }
        if (ValidateNo($("#BuyNo").val()) == "0") {
            Dialog.alert("单据编号重复。", function () {
                $("#BuyNo").addClass("input-validation-error");
            });
            return false;
        }
        //供应商
        //if ($("#SupplierId").val() == '' || $("#SupplierId").val() == '00000000-0000-0000-0000-000000000000') {
        //    Dialog.alert("请选择供应商。", function () {
        //        $("#SupplierId").addClass("input-validation-error");
        //    });
        //    return false;
        //}
        if ($(".combo-value").val().trim() == '' || $(".combo-value").val().trim() == '00000000-0000-0000-0000-000000000000') {
            Dialog.alert("请选择供应商。", function () {
                $(".combo").addClass("input-validation-error");
            });
            return false;
        } else {
            $(".combo").removeClass("input-validation-error");
        }
        //经手人
        if ($("#BuyUser").val() == '') {
            Dialog.alert("请选择经手人。", function () {
                $("#BuyUser").addClass("input-validation-error");
            });
            return false;
        }
        //业务日期
        if ($("#BuyDate").val() == '') {
            Dialog.alert("请选择业务日期。", function () {
                $("#BuyDate").addClass("input-validation-error");
            });
            return false;
        }
        //验证无效的商品并提示
        var hasEmptyPro = false;
        var allCompleteTr = $("#tabProducts tr[id!='trTmp']").has("input:text[autoComplete='off']");
        for (var i = 0; i < allCompleteTr.length; i++) {
            var curtr = $(allCompleteTr[i]);
            var pid = curtr.find("input:hidden[name='hidProductId']").first().val();
            var isEmptyPro = curtr.find("input:text[autoComplete='off'][value!='']").length > 0;
            if (pid == "" && isEmptyPro) {
                curtr.find("input:text[autoComplete='off']").css({ "border": "#ff0000 1px solid" });
                hasEmptyPro = true;
            };
        };
        if (hasEmptyPro) {
            Dialog.alert("商品列表中存在无效的商品。");
            return false;
        }

        var productHid = $("input:hidden[name='hidProductId']");
        //验证数量
        var buyCountList = $("input:text[name='BuyCount']");
        //验证单价
        var buyPriceList = $("input:text[name='BuyPrice']");
        //验证税率
        var isOpenTax = "1";
        var TaxRateList = $("input:text[name='EachTaxRate']");
        //序列号
        var serialNo = $("input[name='hidSerialNo']");
        //验证单位
        var unitNameList = $("input:text[name='UnitName']");
        var unitIsDecimal = $("input:hidden[name='HidIsDecimal']");
        var tempHidValue = "";
        for (var i = 0; i < productHid.length; i++) {
            tempHidValue = tempHidValue + productHid[i].value;

            if (productHid[i].value != "" && (buyPriceList[i].value == "" || Number(buyPriceList[i].value) < 0)) {
                buyPriceList[i].value = "";
                Dialog.alert("商品单价必填并且不能小于0。", function () {
                    $(buyPriceList[i]).focus(); $(buyPriceList[i]).css({
                        "border-bottom": "#fff000 1px solid",
                        "border-left": "#fff000 1px solid",
                        "border-right": "#fff000 1px solid",
                        "border-top": "#fff000 1px solid"
                    });
                });
                return false;
                break;
            }
            if (Number(buyPriceList[i].value) > 9999999999) {
                buyPriceList[i].value = "";
                Dialog.alert("商品单价数值超出合理的范围。", function () {
                    $(buyPriceList[i]).focus(); $(buyPriceList[i]).css({
                        "border-bottom": "#fff000 1px solid",
                        "border-left": "#fff000 1px solid",
                        "border-right": "#fff000 1px solid",
                        "border-top": "#fff000 1px solid"
                    });
                });
                return false;
                break;
            }
            if (!isNumber(buyCountList[i].value)) {
                Dialog.alert("数量必须为数字");
                $(buyCountList[i]).focus(); $(buyCountList[i]).css({
                    "border-bottom": "#fff000 1px solid",
                    "border-left": "#fff000 1px solid",
                    "border-right": "#fff000 1px solid",
                    "border-top": "#fff000 1px solid"
                });
                return false;
                break;
            }
            if (productHid[i].value != "" && (buyCountList[i].value == "" || Number(buyCountList[i].value) <= 0)) {
                buyCountList[i].value = "";
                Dialog.alert("商品数量必填并且大于0。", function () {
                    $(buyCountList[i]).focus(); $(buyCountList[i]).css({
                        "border-bottom": "#fff000 1px solid",
                        "border-left": "#fff000 1px solid",
                        "border-right": "#fff000 1px solid",
                        "border-top": "#fff000 1px solid"
                    });
                });
                return false;
                break;
            }
            if (Number(buyCountList[i].value) > 9999999999) {
                buyCountList[i].value = "";
                Dialog.alert("商品数量数值超出合理的范围。", function () {
                    $(buyCountList[i]).focus(); $(buyCountList[i]).css({
                        "border-bottom": "#fff000 1px solid",
                        "border-left": "#fff000 1px solid",
                        "border-right": "#fff000 1px solid",
                        "border-top": "#fff000 1px solid"
                    });
                });
                return false;
                break;
            }
            if (unitIsDecimal[i].value == "0" && !isInteger(buyCountList[i].value)) {
                Dialog.alert('单位为 ' + $(unitNameList[i]).val() + ' 时， 数量必须输入整数！',
                    function () { $(buyCountList[i]).focus(); });
                return false;
            }
            if (isOpenTax == "1") {
                //验证税率
                if (!isNumber(TaxRateList[i].value) || Number(TaxRateList[i].value) < 0 || Number(TaxRateList[i].value) > 100) {
                    Dialog.alert('税率必须为0-100的数字！');
                    $(TaxRateList[i]).focus();
                    return false;
                }
            }
            var serialNoArr = serialNo[i].value.split(';');
            if (Number(buyCountList[i].value) < (serialNoArr.length - 1)) {
                Dialog.alert("序列号个数不允许超过商品进货数量");
                $(buyCountList[i]).focus(); $(buyCountList[i]).css({
                    "border-bottom": "#fff000 1px solid",
                    "border-left": "#fff000 1px solid",
                    "border-right": "#fff000 1px solid",
                    "border-top": "#fff000 1px solid"
                });
                return false;
            }
        }
        if (tempHidValue == "") {
            Dialog.alert("请选择商品。");
            return false;
        }

        //总金额
        if (!isNumber($("#BuyAmt").val())) {
            Dialog.alert("总金额格式不正确。", function () {
                $("#BuyAmt").addClass("input-validation-error");
            });
            return false;
        }
        if (Number($("#BuyAmt").val()) > 9999999999) {
            Dialog.alert("总金额值超出合理的范围。", function () {
                $("#BuyAmt").addClass("input-validation-error");
            });
            return false;
        }
        $("#BuyAmt").removeClass("input-validation-error");
        //付款账户
        if (typeof ($("#AccountId").val()) == 'undefined' || $("#AccountId").val() == '' || $("#AccountId").val() == null) {
            Dialog.alert("请选择结算方式。", function () {
                $("#AccountId").addClass("input-validation-error");
            });
            return false;
        }
        $("#AccountId").removeClass("input-validation-error");
        //其他费用
        if ($("#OtherFee").val().trim() == '') {
            $("#OtherFee").val('0');
        }
        if (!isNumber($("#OtherFee").val())) {
            Dialog.alert("其他费用格式不正确。", function () {
                $("#OtherFee").addClass("input-validation-error");
            });
            return false;
        }
        if (Number($("#OtherFee").val()) > 9999999999) {
            Dialog.alert("其他费用超出合理的范围。", function () {
                $("#OtherFee").addClass("input-validation-error");
            });
            return false;
        }
        $("#OtherFee").removeClass("input-validation-error");
        //实付金额
        if ($("#RealPayAmt").val().trim() == '') {
            Dialog.alert("请输入实付金额。", function () {
                $("#RealPayAmt").addClass("input-validation-error");
            });
            return false;
        }
        if (!isNumber($("#RealPayAmt").val())) {
            Dialog.alert("实付金额格式不正确。", function () {
                $("#RealPayAmt").addClass("input-validation-error");
            });
            return false;
        }
        if (Number($("#RealPayAmt").val()) > 9999999999) {
            Dialog.alert("实付金额超出合理的范围。", function () {
                $("#RealPayAmt").addClass("input-validation-error");
            });
            return false;
        }
        //if (Number($("#RealPayAmt").val()) > Number($("#FAReceAmt").val())) {
        //    Dialog.alert("实付金额不能大于应付！", function () {
        //        $("#RealPayAmt").addClass("input-validation-error");
        //    });
        //    return false;
        //}
        $("#RealPayAmt").removeClass("input-validation-error");
        return true;
    }

    //初始化序号
    function InitOrder() {
        var rows = $("#tabProducts tr");
        var orders = 1;
        for (var i = 0; i < rows.length; i++) {
            if ($(rows[i]).children('td').eq(2).find('input[type="hidden"]').length == 4 && $(rows[i]).attr("id") != "trTmp") {
                $(rows[i]).children('td').eq(0).children('#orderdiv').text(orders);
                orders++;
            }
        }
    }
    function SaveData() {
        $(".button").hide();
        //验证打印权限
        var isAudit = checkPermByCode('PERM_PRINT');
        if (ValidateForm()) {
            if (isAudit) {
                var isPrint = $("#chkPrint").attr("checked");
                if (isPrint) {
                    $("#IsPrint").val(1);
                    $("form").submit();
                } else {
                    $("#IsPrint").val(0);
                    $("form").submit();
                }
            } else {
                $("form").submit();
            }
        } else {
            $(".button").show();
        }
    }
    function SaveDataToList() {
        $(".button").hide();
        //验证打印权限
        var isAudit = checkPermByCode('PERM_PRINT');
        if (ValidateForm()) {
            $("#IsToList").val(1);
            if (isAudit) {
                var isPrint = $("#chkPrint").attr("checked");
                if (isPrint) {
                    $("#IsPrint").val(1);
                    $("form").submit();
                } else {
                    $("#IsPrint").val(0);
                    $("form").submit();
                }
            } else {
                $("form").submit();
            }
        } else {
            $(".button").show();
        }
    }
    function FunSerialNo(tempJson) {

    }
    function openSn(obj) {
        var productId = $(obj).children('td').eq(2).find("input[name='hidProductId']").val();
        var rowsId = $(obj).children('td').eq(2).find("input[name='hidRowId']").val();
        var warehouseId = $("#WarehouseId").val();
        SingleSelectSerialNo(productId, rowsId, warehouseId, "Buy");
    }
    function chgNoTaxRate() {
        var isTaxRate = document.getElementsByName("chkNoTaxRate")[0];
        if (isTaxRate.checked) {
            var rows = $("#tabProducts tr");
            for (var j = 0; j < rows.length; j++) {
                var productName = $(rows[j]).children('td').eq(1).find('input[name="showProductName"]').val();
                if (typeof (productName) != 'undefined' && productName != '') {
                    $(rows[j]).children('td').eq(7).find('input').val("0.00");
                    $(rows[j]).children('td').eq(7).find('input').change();
                }
            }
        }
        else {
            var rows = $("#tabProducts tr");
            for (var j = 0; j < rows.length; j++) {
                var productName = $(rows[j]).children('td').eq(1).find('input[name="showProductName"]').val();
                if (typeof (productName) != 'undefined' && productName != '') {
                    $(rows[j]).children('td').eq(7).find('input').val(Number("0.3000").toFixed(2));
                        $(rows[j]).children('td').eq(7).find('input').change();
                    }
                }
            }
        }
        function SetWarehouseStock(obj) {
            var serialNoStr = $(obj).val();
            $(obj).val(serialNoStr.replace(",", ";"));
            var serialNo = $(obj).val().split(';');
            if ($(obj).parent().parent().children('td').eq(4).find("input[name='BuyCount']").attr("readonly") == "readonly") {
                $(obj).parent().parent().children('td').eq(4).find("input[name='BuyCount']").val(serialNo.length - 1).change();
            }
            else {
                var buyCount = $(obj).parent().parent().children('td').eq(4).find("input[name='BuyCount']").val();
                if ((serialNo.length - 1) > buyCount) {
                    $(obj).parent().parent().children('td').eq(4).find("input[name='BuyCount']").val(serialNo.length - 1).change();
                }
            }
        } 
</script>

                <div class="footer">
                    <div class="fl"><span class="fontOrange">客服热线：400-855-1002</span> 产品网站：<a href="http://www.joyinwise.com" class="font999" target="_blank">http://www.joyinwise.com</a><br />
                        智慧商贸 V2.9 版权所有: 安徽兆尹信息科技有限责任公司 Copyright © 2011-2014 All Rights Reserved</div>
                    <div class="fr">
                        <img src="../../Content/themes/default/images/qrhome.png" width="157" height="54" />
                    </div>
                </div>
            </td>
        </tr>
    </table>



    <script type="text/javascript">
        $(document).ready(function () {
            eval("");
            parent.$("#divLoading").hide();
            var errMsg = $(".validation-summary-errors").text();
            if (errMsg) {
                Dialog.alert(errMsg);
            }
        });

        function AjaxStart() {
            parent.$("#divLoading").show();
        }
        function AjaxStop() {
            parent.$("#divLoading").hide();
        }

    </script>
    <script type="text/javascript">
        function OpenQuickForm(vwidth, vheight, vpos, vsrc) {
            $("#divQuickForm iframe").css("width", vwidth);
            $("#divQuickForm iframe").css("height", vheight);
            $("#divQuickForm iframe").attr("src", vsrc);
            $("#divQuickForm").css("right", vpos);
            $("#divQuickForm").show();
        }

        function CloseQuickForm() {
            $("#divQuickForm").hide();
        }

        $(function () {
            $("li a").click(function () {
                if (typeof ($(this).find("span[name='navspan']").attr("class")) != "undefined") {
                    $("span[name='spanDt']").hide();
                    $("span[name='navspan']").attr("class", "plus");
                    $("#dt_" + $(this).attr("index")).show();
                    $(this).find("span[name='navspan']").attr("class", "short");
                }
            });
            //头部当前选中的ID
            var firstCurrentId = $(".menuRS").attr("index");
            //左边菜单当前选中的ID
            var currentId = $("li .nav2S a").attr("id");

            if (firstCurrentId) {
                //左边当前选中样式
                $("div.create_menu").hide();
                $("#secMenu_" + $("#" + firstCurrentId).attr("index")).show();
            }
            if (currentId) {
                //头部当前选中样式
                $(".menuRS").attr("class", "menuR");
                $("#firstRes_" + currentId.split('_')[1]).parent().attr("class", "menuRS");
                //左边当前选中菜单   
                $(".nav1S").attr("class", "nav1");
                $("#nav" + currentId.split('_')[2]).attr("class", "nav1S");

                //左边收起其他菜单 
                $("#dt_" + currentId.split('_')[2]).show();
                $("#dt_" + currentId.split('_')[2]).parent().find("span[name='navspan']").attr("class", "short");

                //当前位置
                //$("#curPos").html($("li .current").attr("pos"));
                var curObj = $("li .current");
                if (curObj.length == 2) {
                    $("#curPos").html($(curObj[1]).attr("pos"));
                } else {
                    $("#curPos").html($(curObj[0]).attr("pos"));
                }
            }
        });

        function exLeft() {
            if ($(".nav").is(":visible")) {
                $(".nav").hide();
                $(".navBg").attr("width", "10");
                $(".hiddenNav").attr("class", "hiddenNav2");
            }
            else {
                $(".nav").show();
                $(".navBg").attr("width", "225");
                $(".hiddenNav2").attr("class", "hiddenNav");
            }
        }

        function outLeft() {
            $(".nav").show();
            $(".navBg").attr("width", "225");
            $(".hiddenNav2").attr("class", "hiddenNav");
        }
    </script>
    <div style="display:none">
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
       // document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F21bfb059bc18ae42be9caea3a8b358ca' type='text/javascript'%3E%3C/script%3E"));
    </script></div>
</body>
</html>
<script type="text/javascript">
    var _controller = "Buy";
    var _action = "Add";
    var _url = decodeURI("http://joyinwise.com/Buy/Add");
    var _source = decodeURI("http://joyinwise.com/HomePage/Welcome");
    $.ajax({
        type: "GET",
        url: "/behavior/log?" + Math.random(),
        data: "control=" + _controller + "&action=" + _action + "&url=" + _url + "&source=" + _source
    });
</script>
