<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Silver.aspx.cs" Inherits="Silver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <title> Silver </title>
</head>
<body>
          <div style="position:absolute ; left:550px ; top:1100px">
      
     

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HonkaiConnectionString %>"
          SelectCommand="SELECT [Name],[url],[pc],[attribute] FROM [character] WHERE [NAME] = @Name" >

          <SelectParameters>
              <asp:Parameter DefaultValue="銀狼" Name="Name"></asp:Parameter>
          </SelectParameters>
      </asp:SqlDataSource>

      
  </div>
    
    <div  style = "background-image:url('img/silverBackground.jpg') ;  top:0px ;" class = "BackGroundDefine">
    </div>
    
    
    

    <form id="form1" runat="server">
    <div>
        <div class ="overlay" style ="position:relative ; width:900px ; height:2000px">

        <div style =" width:500px "  >

            <header style="font-size : 30px">
                <b>銀狼</b>
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
            
            <p>「星核獵手」的成員，駭客高手。</p>
     
            <p>將宇宙視為大型沉浸式模擬遊戲，玩樂其中。</p>

            <p>掌握了能夠修改現實參數的「乙太編輯」。</p>
           
            <p>-----------------------------------------------------------------------------------</p>
        <header style = "text-align:center ; font-size:25px">
            <strong>角色相關經歷</strong>
        </header>
           
            <details>
                
                <summary class ="March7_misson">
                    早期經歷
                </summary>
                星核獵手團隊中最後加入的成員。

曾與            螺絲咕姆在信息領域進行了交鋒，銀狼沒有攻破螺絲咕姆的防禦，螺絲咕姆則沒有阻止銀狼離開。
                <br />銀狼方面認為自己初嘗失敗。
                    </details>

                <details>
                    <summary>
                        <p style="color:peru">開拓任務「今天是昨天的明天」</p>
                    </summary>

            星穹列車暫時停靠於空間站「<a href="https://wiki.hoyolab.com/pc/hsr/entry/951?lang=zh-tw">黑塔</a>」期間，空
                間站遭到了反物質軍團的襲擊。三月和丹恆協助空間站人員撤退至安全區域期間，發現了昏迷的星核容器，而這位容器
                日後將成為星穹列車上的新成員「開拓者」。
                三月、丹恆和開拓者在反物質軍團的襲擊下殺出血路，最終解救了受傷的「黑塔」防衛科負責人阿蘭並在姬子的掩護下
                到達安全區域。眾人撤回星穹列車停靠的月台後遭遇了末日獸。在與末日獸的戰鬥中，開拓者為了保護三月七，臉接末
                日獸的吐息，途中被「毀滅」星神 納努克 瞥了一眼，體內的星核便爆發出極強的能量將末日獸擊退。在星核進一步爆
                發時被瓦爾特·楊抑制拐杖敲腦袋，保住了空間站與意識。在三月等人的邀請下，開拓者最終決定加入星穹列車，成為了
                列車組的一員。

            <p style="color:peru">開拓任務「於枯索的冬夜裡」&「於曈曨的驕陽下」</p>
               列車抵達星球雅利洛-Ⅵ，卻被星核的力量影響導致列車無法繼續前行，因此姬子委派開拓者、三月七和丹恆登陸雅利洛-Ⅵ尋找星核。
               經過一系列冒險後，三月等人成功封印了星核，並解決了雅利洛-Ⅵ上的文明貝洛伯格面臨的災難，使貝洛伯格的上層區和下層區重新團結並迎來了新的大守護者。
            
            <p style="color:peru">開拓任務「乘槎馭風仙窟游」</p>
               星穹列車即將躍遷至下一目的地時，星核獵手卡芙卡與列車組展開通訊，告知眾人「羅浮」上也存在著引發危機的星核，三月雖不願遷就星核獵手，但還是出於想要保護無辜的願望同意前往「羅浮」尋找星核。開拓者、三月和瓦爾特一同登陸「羅浮」，由于丹恆和「羅浮」之間的諸多不愉快，因此丹恆沒有和眾人一同在一開始就出發，而是後來才登上「羅浮」。

            </details>
            <p></p>
            <details>
                <summary class ="March7_misson">
                    1.1版本「銀河漫遊」
                </summary>
                <p style="color:peru">同行任務「異邦騎士」</p>
                三月七與瓦爾特、開拓者一起受地衡司委託調查在仙舟上的可疑人士，沒想到可疑人士羅剎的面貌竟與奧托極為神似
                ，令瓦爾特大吃一驚（給楊叔干出走馬燈了都），隨後提出對此人要著重調查。
                眾人先調取了機巧鳥的監控片段，看偵探小說入迷的三月自告奮勇便開始對羅剎的行蹤做模擬推演文案全程高能，但
                由於沒有實際到過現場，三月的推理被楊叔認為充滿漏洞。之後眾人決定親自前往現場查看，剛出門就遇到了說相聲
                的阿來和阿往兩人，原來二人正是在事發這段時間被羅剎搭救而特地前來致謝，了解事件原委後眾人打消了對羅剎的
                懷疑。
                事情告一段落後，地衡司修復了新的監控片段並邀請三月一行人再次前去查看，監控中羅剎面對瘋長的建木，稱自己
                會解決一切，但在這兩句獨白後片段戛然而止米家經典謎語人劇情，雖然只有短短兩句話，但是卻證明了羅剎的身份
                和他的目的並不單純。
                <p style="color:peru">同行任務「霜刃一試」</p>
                開拓者遇到了似乎有所發現的諦聽，但因為無法與諦聽交流而帶著它一起去找能聽懂諦聽說話的三月。三月吐槽為什
                麼諦聽沒有來先找她這樣的美少女這裡男女主角可以反吐槽「難道在你眼裡我不是美少女？」男開拓者選此項更是高
                能。
                三月將諦聽的話翻譯了出來，原來它在流雲渡港口找到了一些奇怪的東西。兩人迅速前往流雲渡，在某處找到了可疑
                物品，發現它是雲騎軍彥卿所遺留下的示跡玉扣（全息記錄儀）。兩人翻閱了記錄儀並了解到了彥卿的去向，隨後立
                即將玉扣交給了景元。

            </details>
            <p> </p>
            <details>
                <summary class ="March7_misson">
                    1.2版本「仙駭有終」
                </summary>
                <br />
                眾人進入被「藥王秘傳」占領的丹鼎司，在符玄的委託下關閉了藥王秘傳用來散布毒煙的藥爐，並擊敗了秘傳魁首丹
                樞。不料一直以來跟隨大家的「停雲」竟突然發難，露出了真面目——其實為毀滅大君·幻朧捏造的分身。看到陪伴已
                久的停雲在眼前消散，眾人無不憤慨與感傷，為了阻止幻朧毀滅仙舟的陰謀，開拓者等人決定深入建木所在之處，阻
                止幻朧。
                進入建木根系所在的鱗淵境後，眾人與景元和恢復了「飲月君」樣貌的丹恆匯合了，雖然驚訝于丹恆的真實身份，但
                眾人並不介意。丹恆以「持明龍尊」之力打開了通往建木根系的道路。眾人一同前往龍宮最深處，迎戰幻朧。
                一番死鬥後，幻朧肉身破滅，神魂逃脫，景元身負重傷。眾人隨雲騎軍回到長樂天修養。

            </details>
            <p> </p>
            <details>
            <summary class ="March7_misson">
                1.3版本「天鏡映劫塵」
                </summary>
                <p style="color:peru"> 開拓任務「劫波渡盡戰雲收」</p>
                解決了星核之亂後，三月七等人受到符玄委託，將停雲遺留的扇子轉交給馭空。在與開拓者閒聊時，三月七提到自己想
                借用太卜司的窮觀陣來了解自己的過去。
                馭空委託三月七等人參加為犧牲者舉辦的「慰靈奠儀」，儀式過後，景元將象徵「結盟之誼」的玉兆送給了列車組。
                在與熟人們告別後，三月七等人離開了羅浮，準備前往下一個目的地——<a href="https://wiki.hoyolab.com/pc/hsr/entry/1804?lang=zh-tw">匹諾康尼</a>
                    。
                </details>
            <p> </p>
            <details>
                <summary class = " March7_misson ">
                    1.4版本「冬夢激醒」
                </summary>
                <p style="color:peru">開拓序聞·冬夢激醒「未來市場」</p>
                三月七和開拓者收到布洛妮婭的邀請，到貝洛伯格去參加煦日節，過程中和開拓者等人一起參與並協助化解了貝洛伯格
                與星際和平公司的債務糾紛。

                <p style="color:peru">冒險任務「星際決勝慶典」</p>
                三月七和開拓者收到了《乙太戰線》的推銷廣告。 饒有興趣的三月七拉著開拓者來到了貝洛伯格的競技場。 在聽取贊
                助人喬瓦尼的介紹時，三月七和開拓者注意到幾個公司員工在欺負貝洛伯格的小孩子。 在喬瓦尼的斡旋下，眾人決定以
                乙太戰線對戰決勝負。 擊敗這幾個自稱「托帕後援團」（火箭隊）的公司員工后，三月七與開拓者得到了這只有自我意
                識的撲滿乙太靈（皮卡丘），踏上了成為星際決勝慶典冠軍（寶可夢大師）的征途......？

                在奪取四枚徽章（擊敗八大館主）后，三月七和開拓者回到貝洛伯格的決賽競技場，也弄明白了這枚乙太靈的來歷。 在
                擊敗托帕（現任冠軍）后，艾絲妲（空木博士）也來到競技場，將撲滿乙太靈的歸屬交給開拓者和三月七決定。

                決定了撲滿乙太靈的歸屬后，開拓者和三月七在喬瓦尼的指引下前往永冬嶺，迎戰神秘的高手玩家——虎克。
                比賽結束后，三月七將會在超連結對決中與開拓者（主角）進行乙太靈對決以決出最終勝負。
            </details>
            <p>------------------------------------------------------------------------------------</p>
            <header style = "text-align:center ; font-size:25px">
                <strong>角色相關</strong>
            </header>
            <ul>
                <li>
                    三月七未在崩壞系列中的其他作品中登場過，是《崩壞：星穹鐵道》中的原創角色、第一個放出角色PV的角色，
                    同時也是遊戲的看板娘，遊戲的APP圖標、遊戲界面的角色圖標，連官方社交帳號頭像都是三月七的大頭照。
                </li>
                <li>
                    「三月七」這個名字是用來紀念自己在列車上醒來的那天的。甦醒時，三月七把自己是誰、原來叫什麼、來自
                    哪裡都忘得一乾二淨了。
                </li>
            </ul>
            <p>

            </p>
            </div>

            <!--右方Table-->
           
<div style="position:absolute ; left:550px ; top:100px" >

 <asp:FormView runat="server" DataSourceID="SqlDataSource1" >
    <ItemTemplate>
        <table runat="server" id = "Table_March7"    style=" width:300px; border :1px ;  " >
           
          <tr >
               <td colspan = "2" style =" height:300px ">

                          <asp:Image id="img_silver" runat="server"  ImageUrl="~/img/Silver.png" class="personalImage" />

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

                     銀狼
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
                        <asp:Label runat="server" Text='<%#Eval("attribute")%>' />
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
                   <a target="_blank" href ="https://zh.moegirl.org.cn/Hanser " >Hanser（漢語)</a><br />          
                   <a target="_blank" href="https://zh.moegirl.org.cn/%E9%98%BF%E6%BE%84%E4%BD%B3%E5%A5%88">阿城佳奈（日語）</a><br />                          
                   <a> Melissa Fahn（英語)</a><br />                        
                     張美（韓語)<br /> 
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
                   <div style=" position:relative ; width:350px ; height:250px ; top:20px">
                    
                 <table>
                    <tr>
                        <td  class="March7_Table_left" style="text-align:center">
                            <p style="color:darkorchid">
                                日文配音:
                            </p>
                        </td>
                    
                        <td class="March7_Table_right" colspan = "2" style="height:50px ">                        
                              
                            <audio controls="controls" preload="none" >
                                <source src="https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/04/08/2e0b0888bf0c0760fd10665e77222b83_601948595534035033.mp3">

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

                            <audio controls="controls" preload="none">
                             <source src="https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/04/08/15a8002286cc09ef1101cc2dca0f2ce9_6527653312974521313.mp3">
">
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
