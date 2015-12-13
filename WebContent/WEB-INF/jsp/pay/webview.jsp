<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>

<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>MiniCheckout</title>
    <link rel="stylesheet" type="text/css" href="../../../css/pinus.css">
</head>
<body>

    <div class="h_content">
        <jsp:include page="../common/header.jsp"/>
    </div>
    <section id="content">
        <div class="ic"></div>
        <div class="container">
            <div class="row">
                <div class="content2">
                    <div class="app">
                        <span class="iphone"><img src="../../../images/big3.jpg" width="100%" height="auto"></span>
                        <label class="text_amount">
                            PAID AMOUNT : <input id="amount" type="text"  readonly="readonly"  placeholder="PAID AMOUNT :"
                                                 value="${order.amount}"/>
                        </label>

                        <div class="ch">
                            <span class="up" onclick="app_pay('wx')">微 信</span>
                            <span class="up" onclick="app_pay('alipay')">支付宝</span>
                            <span class="up" onclick="app_pay('upacp')">银联(upacp)</span>
                            <span class="up" onclick="app_pay('bfb')">百度钱包</span>
                            <span class="up" onclick="wap_pay('upacp_wap')">银联 WAP</span>
                            <span class="up" onclick="wap_pay('alipay_wap')">支付宝 WAP</span>
                            <span class="up" onclick="wap_pay('bfb_wap')">百度钱包 WAP</span>
                            <span class="up" onclick="wap_pay('jdpay_wap')">京东支付 WAP</span>
                            <span class="up" onclick="wap_pay('yeepay_wap')">易宝支付 WAP</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<script src="../../../js/pingpp.js" type="text/javascript"></script>
<script>
    function wap_pay(channel) {
        var amount = document.getElementById('amount').value * 100;

        var pay_url = "http://10.0.44.62:8080/account";

        var xhr = new XMLHttpRequest();
        xhr.open("POST", pay_url, true);
        xhr.setRequestHeader("Content-type", "application/json");
        xhr.send(JSON.stringify({
            channel: channel,
            amount: amount
        }));

        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                console.log(xhr.responseText);
                pingpp.createPayment(xhr.responseText, function(result, err) {
                    console.log(result);
                    console.log(err);
                });
            }
        }
    }

    // app_pay 需要配合 example-webview 的 iOS 或者 Android 项目使用。
    function app_pay(channel) {
        var amount = document.getElementById('amount').value * 100;
        if (typeof PINGPP_IOS_SDK !== 'undefined') {
            PINGPP_IOS_SDK.callPay(channel, amount);
        } else if (typeof PINGPP_ANDROID_SDK !== 'undefined') {
            PINGPP_ANDROID_SDK.callPay(channel, amount);
        }
    }
</script>
</body>
</html>