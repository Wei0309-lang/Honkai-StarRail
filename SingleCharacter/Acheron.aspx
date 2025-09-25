<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Acheron.aspx.cs" Inherits="Acheron" %>

<!DOCTYPE html>
03.
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href ="~/StyleSheet.css" rel="stylesheet" type="text/css" /> 
    <title>Acheron</title>
</head>
    <body>

    <form id="form1" runat="server">

        <div style="background-image:url('https://i.imgur.com/Cq4Hge2.png'); position:fixed ; width:100% ; height:100%" class="BackGroundDefine">
            
        </div>
        <div class="overlay" style="width:800px ; height:1000px ;position:relative ">

            <div >
                <header style="font-size:30px">
                    <b><strong>黃泉</strong></b>
                </header>
                <p>
                自稱「巡海遊俠」的旅人，本名不詳。身佩一柄長刀，獨行銀河。<br /><br />
                淡漠寡言，刀出如紫電般迅猛，卻從來只以刀鞘戰鬥，收而不發。
                </p>
                <p>................................................</p>

                <header style="text-align:center ; width:500px">
                    <strong>角色相關經歷</strong>
                </header>

            </div>
            
        

        <!--右邊table-->
        <div style="position:absolute ;top:2% ; left:60% ;  width:300px ">
            <asp:ScriptManager runat="server"></asp:ScriptManager>

            <table style="table-layout:fixed">
               
                <tr width="fixed">                    
                        <th >
                            <asp:Button id="Achron_before" runat="server" Text="雷電。忘川守芽衣" style="text-align:center ;
                            width:150px ; color:aqua " OnClick="Achron_before_Click"/>
                        </th> 
                        <th>
                             <asp:Button ID="Acheron_after"  runat="server" Text="黃泉" style="text-align:center ; width:160px ; color:aqua"
                                OnClick="Acheron_after_Click"/>
                        </th>
                </tr>
               
                    
                <tr>
                    <td colspan="2">
                         <asp:UpdatePanel runat="server">
                             <ContentTemplate>
                        <asp:Image id="Acheron1" ImageUrl='https://imgur.com/RnEbhdw.png' class="personalImage" runat="server"/>
                            </ContentTemplate>
                             <Triggers>
                                 <asp:AsyncPostBackTrigger ControlID="Achron_before" />
                                 <asp:AsyncPostBackTrigger ControlID="Acheron_after" />
                             </Triggers>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                
                <tr>
                    <td class="March7_Table_left">
                        本名:
                    </td>
                    <td class="March7_Table_right">
                        雷電。忘川守芽衣
                    </td>
                </tr>
                <tr>
                    <td class="March7_Table_left">
                        屬性:
                    </td>
                    <td class="March7_Table_right">
                        雷。虛無
                    </td>
                </tr>
                <tr>
                    <td class="March7_Table_left">
                        聲優:
                    </td>
                    <td class="March7_Table_right">
                        
                        	<a target="_blank" href="https://zh.moegirl.org.cn/zh-tw/%E8%8F%8A%E8%8A%B1%E8%8A%B1">菊花花（漢語）</a><br />
                            <a target="_blank" href="https://zh.wikipedia.org/zh-tw/%E6%BE%A4%E5%9F%8E%E7%BE%8E%E9%9B%AA">澤城美雪（日語）</a><br />
                            <a target="_blank" href="https://www.imdb.com/name/nm3265752/">Allegra Clark（英語）</a><br />
                            <a target="_blank" href="https://zh.wikipedia.org/zh-tw/%E6%9C%B4%E5%BF%97%E8%83%A4">朴志胤（韓語）</a><br />
                    </td>
                    
                </tr>
                
            </table>

            <asp:Label runat="server" ID="chaList" />


            <asp:SqlDataSource runat="server" ID="data" ConnectionString='<%$ ConnectionStrings:HonkaiConnectionString2 %>' SelectCommand="SELECT DISTINCT * FROM [character]" />
            <asp:ListBox runat="server" ID="character" DataSourceID="data" DataTextField="Name" DataValueField="character_ID" />
            </div>
        


        

        <div  style ="position:relative ; top:-500px">
        <label>輸入姓名:</label>
        <asp:TextBox  runat="server" placeholder="輸入姓名">

        </asp:TextBox>

        <label>輸入密碼:</label>
        <asp:TextBox runat="server" placeholder="輸入密碼" >

        </asp:TextBox>
        
        <asp:Button runat="server" text="提交"/>

        </div>
        
        </div>
        </form>




</body>
</html>
