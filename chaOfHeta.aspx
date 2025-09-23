<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chaOfHeta.aspx.cs" Inherits="chaOfHeta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href ="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title> Character of Heta</title>
</head>
<body>
    <div style =' background-image:url(https://i.meee.com.tw/UUvrkt8.jpg)' class="BackGroundDefine">  
        </div>
    <form id="form1" runat="server">
    
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:HonkaiConnectionString2 %>"
                SelectCommand="SELECT [Name], [belong] , [photoOfCharacter] , [url] FROM [character] AS c 
                                INNER JOIN  [Planet] AS p ON c.belong = p.planet_ID
                                WHERE (p.planet_Name = @planetName)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="黑塔空間站" Name="planetName" />
                </SelectParameters>
            </asp:SqlDataSource>


   
    <div class ="overlay" style ="position:relative ; width:1300px ; height:2000px">  
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"
    RepeatColumns="5" CellPadding="15" CellSpacing="0" GridLines="None" >
    <ItemTemplate>
        <asp:LinkButton runat="server" ID="LinkOfPersonal"
            CommandName="GoPersonal" CommandArgument='<%# Eval("url") %>'
            OnCommand="LinkOfPersonal_Command">

            <div class="card">
                <div class="title">名字:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </div>

                <div class="img-box">
                    <asp:Image runat="server" ID="ImageOfHeta"
                        ImageUrl='<%# Eval("photoOfCharacter") %>'
                        Width="230" Height="300" CssClass="img-fit" />

                    
                </div>
            </div>

        </asp:LinkButton>
    </ItemTemplate>
</asp:DataList>

                </div>
      </div>
    </form>

        
</body>
</html>
          
