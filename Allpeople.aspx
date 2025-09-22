<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Allpeople.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>"崩壞星穹鐵道"</title>
    <link href ="StyleSheet.css" rel="stylesheet" type="text/css" />

<style>
</style>
</head>
<body>
    <header >
        "選妃目錄" 
    </header>
    <form id="form1" runat="server">
        <div>
          <asp:Label ID="Label1" runat="server" Text="輸入姓名"></asp:Label>

          <asp:TextBox id="TextBox2" runat="server" placeholder="輸入姓名" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
          <asp:Button id="Button2" runat="server" OnClick="Button1_Click" Text="確認" />

              <div style =" position :relative ;   margin-left: 300px; margin-top: -50px; Width : 1500px ;  height : 700px ; ">

                  <table id = "tabpeop" runat = "server" class="tabledefine">
                    <tr>
                       <td>
                            
                            <asp:ImageButton id = "ImageButton1" runat="server"
                            ImageUrl ="img\花火福爾摩斯.png" CssClass =" ImageButtondefine"
                             PostBackUrl="https://mzh.moegirl.org.cn/%E8%8A%B1%E7%81%AB(%E6%98%9F%E7%A9%B9%E9%93%81%E9%81%93)" />
                                
                            <p class =" name" >
                                花火
                            </p>
                      
                       </td>

                   <td>
                     <asp:ImageButton id = "ImageButton2" runat="server" ImageUrl="img\螢幕擷取畫面 (122).png"  CssClass =" ImageButtondefine"
                          PostBackUrl="https://zh.moegirl.org.cn/%E9%BB%84%E6%B3%89(%E6%98%9F%E7%A9%B9%E9%93%81%E9%81%93)"/>          
                   </td>

                   <td>
                   <asp:ImageButton id = "ImageButton3" runat="server" ImageUrl="img\螢幕擷取畫面 (123).png"  CssClass =" ImageButtondefine" 
                        PostBackUrl="https://baike.baidu.com/item/%E9%9B%B7%E7%94%B5%E5%BF%98%E5%B7%9D%E5%AE%88%E8%8A%BD%E8%A1%A3/64396528)"/>
                    </td>
                    </tr>

                      <!--換行-->

                    <tr>
                         <td>
                        <asp:ImageButton id = "ImageButton4" runat="server" ImageUrl="img\螢幕擷取畫面 (326).png" CssClass =" ImageButtondefine"
                             PostBackUrl="https://honkai-star-rail.fandom.com/zh/wiki/%E5%A4%A7%E9%BB%91%E5%A1%94)"/>    
                         </td>

                         <td>
                        <asp:ImageButton id = "ImageButton5" runat="server" ImageUrl="img\螢幕擷取畫面 (308).png" CssClass =" ImageButtondefine"
                            PostBackUrl= "https://mzh.moegirl.org.cn/%E9%BB%91%E5%A1%94)"/>
                         </td>

                         <td>
                           <asp:ImageButton id = "ImageButton6" runat="server" ImageUrl="img\螢幕擷取畫面 (95).png" CssClass ="ImageButtondefine"
                               PostBackUrl="https://zh.moegirl.tw/%E9%BB%91%E5%A4%A9%E9%B9%85(%E6%98%9F%E7%A9%B9%E9%93%81%E9%81%93)" />
                        </td>
                      </tr>
                      <!--換行-->
                      <tr>
                         <td>
                            <asp:ImageButton id = "ImageButton7" runat="server" ImageUrl="img\螢幕擷取畫面 (318).png" CssClass ="ImageButtondefine"
                               PostBackUrl="https://zh.moegirl.tw/%E9%98%BF%E6%A0%BC%E8%8E%B1%E9%9B%85)"  />           
                        </td>

                        <td>
                            <asp:ImageButton id = "ImageButton8" runat="server" ImageUrl="img\螢幕擷取畫面 (88).png" CssClass ="ImageButtondefine"
                                PostBackUrl= "https://zh.moegirl.tw/%E6%B5%81%E8%90%A4)"/>        
                        </td>

                        <td>
                            <asp:ImageButton id = "ImageButton9" runat="server" ImageUrl="img\螢幕擷取畫面 (323).png" CssClass ="ImageButtondefine"
                                 PostBackUrl="https://mzh.moegirl.org.cn/%E9%81%90%E8%9D%B6)"/>                               
                        </td>

                            </tr>
                    </table>
             </div>

       
       
         
        
        



        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

