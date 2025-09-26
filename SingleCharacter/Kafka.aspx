<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kafka.aspx.cs" Inherits="Kafka" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="~/StyleSheet.css" rel="stylesheet" type="text/css" />
    <title> Kafka </title>
</head>
<body>
      
      
     

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:HonkaiStarConnectionString %>'
              SelectCommand="SELECT [Name], [Path], [url], [pc], [attribute] FROM [character] WHERE ([Name] = @Name)" 
              ProviderName='<%$ ConnectionStrings:HonkaiStarConnectionString.ProviderName %>'>

              <SelectParameters>
                  <asp:Parameter DefaultValue="卡芙卡" Name="Name" Type="String"></asp:Parameter>
          </SelectParameters>
      </asp:SqlDataSource>
          

      
  
    
    <div  style = "background-image:url('/img/Background/Hunters_Back .webp') ;  top:0px ;" class = "BackGroundDefine">
    </div>
    
    
    

    <form id="form1" runat="server">
    <div>
        <div class ="overlay" style ="position:relative ">

        <div style =" width:500px "  >

            <header style="font-size : 30px">
                <b>卡芙卡</b>
            </header>
            <asp:RadioButtonList runat="server" ID="check" RepeatDirection="Horizontal" 
                OnSelectedIndexChanged="check_SelectedIndexChanged" 
                AutoPostBack="true" ViewStateMode="Enabled">

                <asp:ListItem Text="have">
                </asp:ListItem>

                <asp:ListItem Text="Don't have">                 
                </asp:ListItem>

            </asp:RadioButtonList> 
            
        <asp:ScriptManager runat="server"></asp:ScriptManager>

         <asp:UpdatePanel runat="server" UpdateMode="Conditional">
             <ContentTemplate>
            <asp:Label ID="have" runat="server" CssClass="">

            </asp:Label>
                 </ContentTemplate>
             <Triggers >
                 <asp:AsyncPostBackTrigger ControlID="check" />
             </Triggers>
         </asp:UpdatePanel> 
            
            <p>在星際和平公司的通緝檔案裡，卡芙卡只留下了名字和「愛好收集大衣」的紀錄。</p>
                

            <p>
                人們對這位星核獵手所知甚少，只知道她是「命運的奴隸」艾利歐最信任的成員之一。
            </p>

            <p>
                為了到達艾利歐所預見的「未來」，卡芙卡開始行動。
            </p>
          
            <p>-----------------------------------------------------------------------------------</p>
        <header style = "text-align:center ; font-size:25px">
            <strong>角色相關經歷</strong>
        </header>
           
            <details>
                
                <summary class ="March7_misson">
                    早期
                </summary>
                <p>
                    出生於「天衣五」，一顆因受星核影響，居民不知恐懼為何物、放縱自己的欲望，會墮落成「惡魔」的星球。
                    卡芙卡曾任「惡魔獵人」，負責逮捕惡魔，但她無法體會到自己生命的價值。在新巴比倫與艾利歐相遇後，
                    艾利歐承諾會帶給卡芙卡改變，因此卡芙卡加入了星核獵手。之後，卡芙卡救下了在宇宙中漂泊著的，倖存
                    的格拉默鐵騎流螢，使其也加入星核獵手，以其裝甲「薩姆」的名號開始了星核獵手的活動。
                    根據艾利歐的指示，卡芙卡和薩姆一同打敗並招募了刃，後又迎來了銀狼的加入。在刃的記憶中，開拓者
                    （星核的載體）似乎曾與卡芙卡一同行動了很長一段時間，並且為了讓開拓者活下去而付出了許多。
                    在「耶佩拉叛亂案」發生前，星核獵手已經為了奪取星核而參與了46樁大案。卡芙卡用言靈術操縱隸屬於
                    「泯滅幫」的耶佩拉判罰官在耶佩拉宮內對自己進行審判，隨後解除了對判罰官的控制並任由前來營救她
                    的薩姆將四個判罰官殺死。望著叛亂中的耶佩拉，薩姆提醒卡芙卡不要再玩弄獵物，卡芙卡漫不經心地同意。
                </p>

            </details>
           <br />

            <details>
                <summary class ="March7_misson">開拓任務「今天是昨天的明天」</summary> 

                <p>
                    在艾利歐的指引之下，卡芙卡前來空間站尋找星核的載體。在空間站門口拉了一會兒隱形的小提琴，趁反物質軍團
                    進入空間站引發騷亂時進入空間站。和銀狼匯合後一同找到星核的載體，做出了對載體性別的選擇後，將星核注入
                    載體內，等載體醒來之後，溫柔地和載體告別。
                </p>

           </details>
            <br />

               <details>
                   <summary class="March7_misson">開拓任務「乘槎馭風仙窟游」</summary>
                   <p>
                        列車組對雅利洛-VI的開拓告一段落後，以虛影的形式出現在列車上，提出請列車組改變下一站的目的地。最終
                        經過民主投票，列車組接受了卡芙卡的提議。
                        列車組來到仙舟「羅浮」、被景元安排捉拿卡芙卡的任務後，卡芙卡在迴星港故意留下線索引列車組追上自己
                        ，又控制了三名雲騎軍與列車組交手，自己表示「去前面再回」並順帶揶揄了符玄的身高離開。擊敗三名雲騎軍
                        後，在卡芙卡的誘導下，列車組來到了卡芙卡事先預定的戰場。一番交手後，卡芙卡向天清空彈匣，可從天而降
                         的符玄依照法眼預測修正了彈道，毫髮無損地「控制」了毫無抵抗意願的卡芙卡。
                         列車組重啟窮觀陣後，符玄依照諾言押來卡芙卡，在列車團陪審下對其進行審訊。被關押的時候似乎被摘了美瞳
                       ，可以看見卡芙卡的瞳孔了。符玄啟動窮觀陣，得知卡芙卡所了解的真相後大為震撼，讓列車組成員自行審問卡芙
                        卡。列車組讓開拓者訊問卡芙卡，但卡芙卡也只是按照艾利歐給出的信息「老實交代」，說出了關於星核獵手在此
                         次事件的目的與「殺死星神」的事情。
                         在預定的時間，早已被「巡獵」斫斷的建木重獲新生。卡芙卡掙開仙舟的拘束意欲離開。開拓者想要追捕，卻被刃
                         攔住。最後卡芙卡與刃從窮觀陣邊緣一躍而下
                    </p>
               </details> 

            <br />

            <details>
            <summary class="March7_misson"> 同行任務·星核獵手「朋克洛德精神」</summary>
                <p>
                      在銀狼與黑塔和螺絲咕姆較量失敗，被封禁了76個遊戲帳號後，「安慰」銀狼要其不要再又哭又鬧的了，銀狼：
                      我沒有又哭又鬧。（哭腔）。在銀狼表示自己要前往庇爾波因特的公司總部去為帳號解封時，卡芙卡表示艾利歐
                      接下來的劇本里需要自己參與，因此無法陪她同去。
                </p>
            </details>

            <br />

            <details>
                <summary class="March7_misson">
                    開拓任務「雲樹百丈蔽重樓」
                </summary>
                <p>
                    卡芙卡與刃在鱗淵境等候丹恆，放任刃和丹恆、彥卿交手。亂鬥中刃將丹恆逼出了飲月君形態，卡芙卡用言靈術先是
                    解放了刃的魔陰身，後又強行中止了戰鬥。景元適時來到，因為刃喚起了飲月君有功，所以景元放任卡芙卡和刃離開
                    。其後卡芙卡的通緝令被景元撤銷了。
                </p>
            </details>

            <br />

            <details>
                <summary class="March7_misson">
                    同行任務·星核獵手「陌生女人的來信」
                </summary>
                 <p>
                   卡芙卡和刃並未離開仙舟羅浮。她匿名向開拓者發了封求助簡訊，讓開拓者前往太卜司。卡芙卡向開拓者說明了自己
                     面臨的困境：景元雖然允許二人離開，但只撤銷了卡芙卡的通緝令——刃仍然是最高等級的通緝犯。而且因為刃的
                     魔陰身加重了，二人不能立刻離開羅浮，而自己雖然能用言靈暫時封印刃的魔陰身，但一心不能二用，在此期間需
                     要開拓者為她護法。
                </p>
                </details>
                
            <br />
           
            <p>------------------------------------------------------------------------------------</p>
            <header style = "text-align:center ; font-size:25px">
                <strong>角色相關</strong>
            </header>
            <ul>
                <li>
                    通過卡芙卡的角色PV「戲劇性反諷」可知，星際和平公司對卡芙卡的懸賞金額為108.99億信用點。
                </li>
                <li>
                    在卡芙卡剛登場時，她神似瑪奇瑪的眼神讓不少玩家認為她是壞女人。
                </li>
                <li>
                    由於在劇情中主角是被卡芙卡喚醒，許多玩家會稱呼其為媽。
                </li>
                <li>
                    從卡芙卡被捕後審訊的細節可得知，卡芙卡特殊的瞳孔效果是因為佩戴了隱形眼鏡。
                </li>
                                       
                <li>
                    截至3.3版本，卡芙卡的簡訊均為匿名或借用其他角色的手機發送，也是星核獵手的四位可控角色中
                    ，唯一一位不使用自己的帳號發送簡訊的角色；也因此無法得知卡芙卡的簡訊簽名。在成為同伴後
                    的日常簡訊中，她會表示對開拓者的關心。
                </li>


            </ul>
            <p>

            </p>
            </div>

            <!--右方Table-->

<div style="position:absolute ; left:600px ; top:80px" >

     <asp:FormView runat="server" ID="formView1" DataSourceID="SqlDataSource1">
          <ItemTemplate>
        <table runat="server" id = "Table_March7"    style=" width:380px; border :1px ;  " >
           
          <tr >
               <td colspan = "2" style =" height:400px">
                 
                <asp:Image id="img_Kafka" runat="server" ImageUrl = "~/img/Personal/Kafkal.webp" class="personalImage" />

             </td>
        </tr>
        <tr>

             <th colspan="2" style="text-align:center">
                             基本訊息:
                        </th>
             </tr>
             <tr>
                 <td class = "March7_Table_left">

                     本名:
                 </td>
                 <td class="March7_Table_right">

                     卡芙卡
                 </td>
            </tr>
            <tr>
                 <td class="March7_Table_left">
                     性別:
                 </td>
                 <td class="March7_Table_right">
                     女性
                 </td>
           </tr>
           <tr>
               <td class="March7_Table_left">

                   屬性:

               </td>
               <td class="March7_Table_right">

                   <span style="color:blueviolet">
                        <asp:Label runat="server" Text='<%#Convert.ToString( Eval("attribute") )+ "‧" + Eval("path")%>' />
                   </span>      
                   
                </td>
                    </tr>
         <tr>

         <td class="March7_Table_left">
               自機角色:
         </td>
            <td class="March7_Table_right">
                
                 <asp:Label runat="server"  Text='<%#Convert.ToBoolean( Eval("pc") )? "是":"否" %>'   />
                                                                                  
            </td>
              
        </tr>
         <tr>
              <td class="March7_Table_left">
                  配音:
              </td>
              <td class="March7_Table_right">
                   <a target="_blank" href ="https://zh.moegirl.org.cn/%E5%BE%90%E6%85%A7 " >徐慧（漢語)</a><br />          
                   <a target="_blank" href="https://zh.moegirl.org.cn/%E4%BC%8A%E8%97%A4%E9%9D%99">伊藤靜（日語）</a><br />                          
                                                                                                    Cheryl Texiera（英語)<br />                        
                                                                                                    史文英（韓語)<br /> 
              </td>
      </tr>
      <tr>
          <td class="March7_Table_left">
              所屬團體:
          </td>
          <td class="March7_Table_right">
               <a href="https://honkai-star-rail.fandom.com/zh/wiki/%E6%98%9F%E6%A0%B8%E7%8C%8E%E6%89%8B?variant=zh-tw">星核獵手</a>
          </td>
      </tr>
</table>

                    <!--配音-->
                   <div style=" position:relative ; width:350px ; height:250px ; top:20px ">
                    
                 <table>
                    <tr>
                        <td  class="March7_Table_left" style="text-align:center">
                            <p style="color:darkorchid">
                                日文配音:
                            </p>
                        </td>
                    
                        <td class="March7_Table_right" colspan = "2" style="height:50px ">                        
                                <audio preload="none" controls="controls">
                                     <source src="https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/04/08/0a38c0ed7f9c52358a05bf8508a1b4af_6339007775909362732.mp3"/>   
                                </audio>                          
                        </td>
                    </tr>
                     <tr>
                         <td class="March7_Table_left" >
                             <p style="color:darkorchid">
                                 中文配音:
                             </p>                             
                         </td>
                         <td class="March7_Table_right" style="height:50px" colspan = "2">

                          <audio preload="none" controls="controls">
                            <source src="https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/04/08/f53e9b2eb6e3192f1c47b937f4c9ccba_457830365904147467.mp3"/>   
                         </audio>
                         </td>
                     </tr>
                </table>
                 </ItemTemplate>
      </asp:FormView>


           </div> 
        
            
      </div>
      </div>
    </form>
        
</body>
</html>
