<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
	<meta charset="utf-8">
	<title>客户信息管理-->客户信息</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="/static/commons/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="/static/css/public.css" media="all" />
</head>
<body class="childrenBody">

<form class="layui-form layui-row layui-col-space10" id="edit_customer">
	<div class="layui-col-md9 layui-col-xs12">
		<div class="layui-row layui-col-space10">
			<div class="layui-col-md9 layui-col-xs7">


				<div class="layui-row">
					<div class="layui-col-md6">
						<div class="grid-demo grid-demo-bg1">
							<div class="layui-form-item magt3">
								<label class="layui-form-label">客户编号</label>
								<div class="layui-input-block">
									<input type="text" class="layui-input customerId" name="customerId" required lay-verify="required" placeholder="客户编号" readonly>
								</div>
							</div>
						</div>
					</div>
					<div class="layui-col-md6">
						<div class="grid-demo"><div class="layui-form-item magt3">
							<label class="layui-form-label">名称</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input customerName" required  lay-verify="required" name="customerName" placeholder="名称" ><span style="color: red;">*</span>
							</div>
						</div>

						</div>
					</div>
				</div>
				<div class="layui-row">
					<div class="layui-col-md6">
						<div class="grid-demo grid-demo-bg1">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">地区</label>
									<div class="layui-input-block">
										<select name="city" id="city"class="city" required lay-filter="city">

										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="layui-col-md6">
						<div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">客户经理</label>
								<div class="layui-input-block">
									<select name="customerMgr" class="customerMgr" id="customerMgr" required lay-filter="customerMgr">

									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-row">
					<div class="layui-col-md6">
						<div class="grid-demo grid-demo-bg1">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">客户等级</label>
									<div class="layui-input-block">
										<select name="customerGrade" class="customerGrade" id="customerGrade"  required lay-filter="customerGrade">


										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="layui-col-md6">
						<div class="grid-demo"><div class="layui-form-item">
							<div class="layui-inline">
								<label class="layui-form-label">客户信用度</label>
								<div class="layui-input-block">
									<select name="customerCredit" class="customerCredit" id="customerCredit" required lay-filter="customerCredit">
									</select>
								</div>
							</div>
						</div>

						</div>
					</div>
				</div>


				<div class="layui-col-md6">
					<div class="grid-demo"><div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">客户满意度</label>
							<div class="layui-input-block">
								<select name="customerSatisfaction" id="customerSatisfaction"  class="customerSatisfaction" required  lay-verify="required">
								</select>
							</div>
						</div>
					</div>

					</div>
				</div>
			</div>
			<div class="layui-row">
				<div class="layui-col-md6">
					<div class="grid-demo grid-demo-bg1">
						<div class="layui-form-item">
							<div class="layui-inline">
								<div class="layui-form-item magt3">
									<label class="layui-form-label">邮政编码</label>
									<div class="layui-input-block">
										<input type="text" class="layui-input postalCode" required  lay-verify="required" name="postalCode"  placeholder="请输入邮政编码"><span style="color: red;">*</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-col-md6">
					<div class="grid-demo"><div class="layui-form-item">
						<div class="layui-inline">
							<div class="layui-form-item magt3">
								<label class="layui-form-label">传真</label>
								<div class="layui-input-block">
									<input type="text" class="layui-input fax" required  lay-verify="required" name="fax" placeholder="请输入传真"><span style="color: red;">*</span>
								</div>
							</div>
						</div>
					</div>

					</div>
				</div>
			</div>

			<div class="layui-form-item magt3">
				<label class="layui-form-label">地址</label>
				<div class="layui-input-block">
					<input type="text" class="layui-input address" required  lay-verify="required" name="address" placeholder="请输入公司地址"><span style="color: red;">*</span>
				</div>
			</div>



			<div class="layui-form-item magt3">
				<label class="layui-form-label">电话</label>
				<div class="layui-input-block">
					<input type="text" class="layui-input phone" required  lay-verify="phone" name="phone" placeholder="请输入联系电话"><span style="color: red;">*</span>
				</div>
			</div>
			<div class="layui-form-item magt3">
				<label class="layui-form-label">网址</label>
				<div class="layui-input-block">
					<input type="text" class="layui-input ulr" required  lay-verify="required"  name="ulr" placeholder="请输入公司网址"><span style="color: red;">*</span>
				</div>
			</div>


			<div class="layui-row">
				<div class="layui-col-md6">
					<div class="grid-demo grid-demo-bg1">
						<div class="layui-form-item">
							<div class="layui-inline">
								<div class="layui-form-item magt3">
									<label class="layui-form-label">营业执照注册号</label>
									<div class="layui-input-block">
										<input type="text" class="layui-input businessLicense" name="businessLicense" required lay-verify="businessLicense" placeholder="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-col-md6">
					<div class="grid-demo"><div class="layui-form-item">
						<div class="layui-inline">
							<div class="layui-form-item magt3">
								<label class="layui-form-label">法人</label>
								<div class="layui-input-block">
									<input type="text" class="layui-input juridicalPerson" required  lay-verify="required" name="juridicalPerson" placeholder=""><span style="color: red;">*</span>
								</div>
							</div>
						</div>
					</div>

					</div>
				</div>
			</div>
			<div class="layui-row">
				<div class="layui-col-md6">
					<div class="grid-demo grid-demo-bg1">
						<div class="layui-form-item">
							<div class="layui-inline">
								<div class="layui-form-item magt3">
									<label class="layui-form-label">注册资金（万元）</label>
									<div class="layui-input-block">
										<input type="text" class="layui-input registeredCapital" required lay-verify="registeredCapital"  name="registeredCapital"  placeholder="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-col-md6">
					<div class="grid-demo"><div class="layui-form-item">
						<div class="layui-inline">
							<div class="layui-form-item magt3">
								<label class="layui-form-label">年营业额</label>
								<div class="layui-input-block">
									<input type="text" class="layui-input annualSales" required lay-verify="annualSales"  name="annualSales" placeholder="">
								</div>
							</div>
						</div>
					</div>

					</div>
				</div>
			</div>

			<div class="layui-row">
				<div class="layui-col-md6">
					<div class="grid-demo grid-demo-bg1">
						<div class="layui-form-item">
							<div class="layui-inline">
								<div class="layui-form-item magt3">
									<label class="layui-form-label">地税登记号</label>
									<div class="layui-input-block">
										<input type="text" class="layui-input landTaxCode"  lay-verify="landTaxCode" name="landTaxCode" placeholder="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="layui-col-md6">
					<div class="grid-demo"><div class="layui-form-item">
						<div class="layui-inline">
							<div class="layui-form-item magt3">
								<label class="layui-form-label">国税登记号</label>
								<div class="layui-input-block">
									<input type="text" class="layui-input centralTax"  lay-verify="centralTax" name="centralTax" placeholder="">
								</div>
							</div>
						</div>
					</div>

					</div>
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-inline">
					<div class="layui-form-item magt3">
						<label class="layui-form-label">开户银行</label>
						<div class="layui-input-block">
							<input type="text" class="layui-input depositBank" required  lay-verify="required" name="depositBank" placeholder=""><span style="color: red;">*</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-form-item magt3">
			<label class="layui-form-label">银行账号</label>
			<div class="layui-input-block">
				<input type="text" class="layui-input bankAccount" required  lay-verify="required" name="bankAccount" placeholder=""><span style="color: red;">*</span>
			</div>
		</div>
		<div class="layui-form-item magl150">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="saveCustomer">保存</button>
				<a class="layui-btn layui-btn-normal backContact_btn" ><i class="layui-icon layui-icon-return"></i>返回</a>
			</div>
		</div>
	</div>

	</div>

</form>

<script type="text/javascript" src="/static/commons/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/customerManager/customer/customerList.js"></script>


</body>
</html>