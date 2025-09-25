<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lofu.aspx.cs" Inherits="Lofu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="~/StyleSheet.css" rel="stylesheet" type="text/css" />
    <title> Character of Lofu </title>
</head>
<body>
    <div style =' background-image:url(/img/Background/Lofu.jpg)' class="BackGroundDefine">  
        </div>
    <form id="form1" runat="server">
    
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString='<%$ ConnectionStrings:HonkaiStarConnectionString2 %>'
                SelectCommand="SELECT [Name], [belong], [url] ,[character_photo] FROM [character] WHERE ([belong] = @belong2)" ProviderName='<%$ ConnectionStrings:HonkaiStarConnectionString2.ProviderName %>'>
                <SelectParameters>
                    <asp:Parameter DefaultValue="p_03" Name="belong2" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>


   
    <div class ="overlay" style ="position:relative ; width:1300px ; height:2000px">  
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"
            RepeatColumns="5" CellPadding="15" CellSpacing="0" GridLines="None"  OnItemDataBound="character_List_ItemDataBound">
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="LinkOfPersonal"
                    CommandName="GoPersonal" CommandArgument='<%# Eval("url") %>'
                     OnCommand="LinkOfPersonal_Command">

                <div class="card">
                <div class="title">名字:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </div>

                <div class="img-box" >
                    <asp:Image runat="server" ID="ImageOfLofu"
                        Width="230" Height="325" CssClass="img-fit" />

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
