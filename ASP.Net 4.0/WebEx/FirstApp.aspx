<html>
	<head>
		<title> :::: �ݰ����ϴ�! ASP.NET :::: </title>
		<script language = "C#" runat = "server">
			void Page_Load(object sender, System.EventArgs e)
			{
				lblMessage.Text = "����ð� : "+DateTime.Now.ToString();
			}
		</script>
	</head>
	<body>
		<center>
			<h3> �ݰ����ϴ�! ASP.NET </h3>
			<hr width = "300"/>
			<asp:Label id = "lblMessage" runat = "server"/>
			<hr width = "300"/>
		</center>
	</body>
</html>