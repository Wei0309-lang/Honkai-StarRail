<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Allmap.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> 所有地圖 </title>
    <link href ="StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="SqlDataSourceOfMap" runat="server" ConnectionString='<%$ ConnectionStrings:HonkaiConnectionString %>'
                SelectCommand="SELECT [planet_Name] , [photo] ,[goto] FROM [Planet]" />

        </div>
        <div style =" font-size:40px ; color:blue">
            崩壞星穹鐵道地圖:
        </div>
        <div style ="position:center ; height:550px; width:1200px"  >
            <asp:DataList runat="server" DataSourceID="SqlDataSourceOfMap"
                 GridLines="Horizontal" RepeatColumns="3"
                 Width="100%" Height="100%" HorizontalAlign="Center" CssClass="card"
                 CellPadding="15">
         
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="EveryMap"
                        CommandName="EveryMapClick" CommandArgument='<%# Eval("goto") %>'
                        OnCommand="EveryMap_Command">
                    星球:
                    <asp:Label Text='<%# Eval("planet_Name") %>' runat="server" ID="planet_NameLabel" /><br />
                    <div class="img-box">
                    <asp:Image runat="server"  CssClass="img-fit"  
                        ImageUrl=' <%# Eval("photo")%> ' 
                        Width="450" Height="300"/>
                    </div>
                    
                   </asp:LinkButton>
                </ItemTemplate>
            </asp:DataList>
        </div>
                        

    </form>
</body>
</html>
