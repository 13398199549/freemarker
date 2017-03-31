<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../static/bootstrap/css/bootstrap-theme.css">
<script type="text/javascript"
	src="../static/bootstrap/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript"
	src="../static/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>


	
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-md-6 col-lg-4" style="background: red">
				123
			</div>
			<div class="col-sm-9 col-md-6 col-lg-8" style="background: green">
				456
			</div>
		</div>

		<#-- ==是来判断在它两侧的值相等的操作符, 比较的结果会是true或者false 左侧是引用的变量，
		右侧如果是数值就直接写，不要加引号-->
		
		
		<#-- !"" 為某一個變量設置初始化的值，防止中途传值丢失 -->
		<h1>
			Welcome ${name?cap_first?html} ,${age/2},${date!"2017-03-20"},${animals?size}<#--size 序列中元素的个数-->
			
			
			
			<#-- freemarker内置函数
			html : 字符串中所有的特殊 HTML 字符都需要用实体引用来代替（比如 < 代替 &lt;
			int :数字的整数部分（比如 -1.9?int 就是 -1 ）
			cap_first :字符串的第一个字母变为大写形式
			lower_case :字符串的小写形式
			upper_case :字符串的大写形式
			trim :去掉字符串首尾的空格
			-->
			
			
			
			<#if name=="puxubo"> <font color="red">,our beloved
				leader</font> <#else> <#-- else 语句需要写入到if条件判断之内--> <font
				color="green">,my brother</font></#if>
			!
		</h1>

		<p />
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<#list animals as animal>
					<tr>
						<td>${animal.name}</td>
						<td>${animal.age/2}</td>
					</tr>
				</#list>
			</tbody>
		</table>
		
		<!-- 标准的按钮 -->
		<button type="button" class="btn btn-default">默认按钮</button>
		<!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
		<button type="button" class="btn btn-primary">原始按钮</button>
		<!-- 表示一个成功的或积极的动作 -->
		<button type="button" class="btn btn-success">成功按钮</button>
	</div>
	
	
	<#include "footer.html"/>
</body>
</html>