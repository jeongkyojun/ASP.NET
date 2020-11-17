<html>
	<head>
		<title> :::: 반갑습니다! ASP.NET :::: </title>
		<script language = "C#" runat = "server">
			void Page_Load(object sender, System.EventArgs e)
			{
				lblMessage.Text = "현재시각 : "+DateTime.Now.ToString();
			}
		</script>
	</head>
	<body>
		<center>
			<h3> 반갑습니다! ASP.NET </h3>
			<hr width = "300"/>
			<asp:Label id = "lblMessage" runat = "server"/>
			<hr width = "300"/>
		</center>
	</body>
</html>