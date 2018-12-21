<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript"  src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" >
        $(document).ready(function () {
            $.getJSON("api/Values")
                .done(function (data) {
                    // On success, 'data' contains a list of products.
                    alert(data);
                });

        });
        function formatItem(item) {
            return item.Name + ': $' + item.Price;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul id="products" />

        </div>
    </form>
</body>
</html>
