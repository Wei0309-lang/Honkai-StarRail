<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chaOfHeta.aspx.cs" Inherits="chaOfHeta" %>I

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href ="~/StyleSheet.css" rel="stylesheet" type="text/css" />
    <title> Character of Heta</title>
</head>
<body  >
    <div class="BackGroundDefine" style='background-image: url(https://i.meee.com.tw/UUvrkt8.jpg)' ></div>
    <form id="form1" runat="server">
    
        
 <asp:SqlDataSource ID="SqlDataSource1" runat="server"
     ConnectionString='<%$ ConnectionStrings:HonkaiStarConnectionString %>'
     SelectCommand="SELECT [Name], [belong], [url] , [character_photo] FROM [character] WHERE ([belong] = @belong)" 
     ProviderName='<%$ ConnectionStrings:HonkaiStarConnectionString.ProviderName %>'>
     <SelectParameters>

         <asp:Parameter DefaultValue="p_01" Name="belong" Type="String" />

     </SelectParameters>

 </asp:SqlDataSource>
            

   
    <div class ="overlay" style ="position:relative ; width:1700px ; background-color:rgb(0,0,0,0.7)">  

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"
        RepeatColumns="3" CellPadding="15" CellSpacing="5" GridLines="None"
        OnItemDataBound="character_List_ItemDataBound"  >
        
    <ItemTemplate>
        <asp:LinkButton runat="server" ID="LinkOfPersonal"
            CommandName="GoPersonal" CommandArgument='<%# Eval("url") %>'
            OnCommand="LinkOfPersonal_Command"  ForeColor="#cc3399">

            <div class="card">
                <div class="title">名字:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'  />
                </div>

                <div class="img-box" >
                    <asp:Image runat="server" ID="ImageOfHeta"
                        
                        Width="500" Height="500" CssClass="img-fit" />

                    
                </div>
            </div>

        </asp:LinkButton>
    </ItemTemplate>
</asp:DataList>

                </div>
      
    </form>

        
</body>
</html>
          
