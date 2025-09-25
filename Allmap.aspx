<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Allmap.aspx.cs" Inherits="Allmap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Allmap </title>
    <link href ="StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="SqlDataSourceOfMap" runat="server" ConnectionString='<%$ ConnectionStrings:HonkaiStarConnectionString4 %>'
                SelectCommand="SELECT * FROM [planet]" ProviderName='<%$ ConnectionStrings:HonkaiStarConnectionString4.ProviderName %>' />


        </div>

        <div  style = "background-image:url('img/Background/universe.jpg') ;  top:0px ;" class = "BackGroundDefine" ></div>
        <div class="overlay" style ="position:relative ; width:1200px ; height:2000px">
        <div style =" font-size:40px ; color:blue">
            崩壞星穹鐵道地圖:
        </div>
        <div style ="position:center ; height:550px; width:1100px"  >
            <asp:DataList ID="Map_List" runat="server" DataSourceID="SqlDataSourceOfMap"
                GridLines="Horizontal" RepeatColumns="2"
                Width="100%" Height="100%" HorizontalAlign="Center" CssClass="card"
                CellPadding="15" BorderWidth="5px" DataKeyField="planet_ID"  OnItemDataBound="Map_List_ItemDataBound">

                <ItemTemplate>
                    <asp:LinkButton runat="server"  OnCommand="EveryMap_Command" CommandName="MapChoose"  CommandArgument='<%#Eval("goto") %>' >

                    星球:
                    <asp:Label Text='<%# Eval("planet_Name") %>' runat="server" ID="planet_NameLabel" />
                    <br />
                    <br />

                        <div class="img-box">

                            <asp:Image ID="imgOfplanet" runat="server" CssClass="img-fit"
                                Width="500" Height="300"/>

                        </div>
                   </asp:LinkButton>
                </ItemTemplate>
            </asp:DataList>
        </div>
        </div>                

    </form>
</body>
</html>
