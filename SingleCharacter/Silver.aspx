<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Silver.aspx.cs" Inherits="Silver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="~/StyleSheet.css" type="text/css" rel="stylesheet" />
    <title> Silver </title>
</head>
<body>
          <div style="position:absolute ; left:550px ; top:1100px">
      
     

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:HonkaiStarConnectionString %>'
        SelectCommand="SELECT [Name], [Path], [url], [pc], [attribute] FROM [character] WHERE ([Name] = @Name)" 
        ProviderName='<%$ ConnectionStrings:HonkaiStarConnectionString.ProviderName %>'>

        <SelectParameters>
            <asp:Parameter DefaultValue="銀狼" Name="Name" Type="String"></asp:Parameter>
    </SelectParameters>
</asp:SqlDataSource>

      
  </div>
    
    <div  style = "background-image:url('/img/Background/Silver_Back.jpg') ;  top:0px ;" class = "BackGroundDefine">
    </div>
    
    
    

    <form id="form1" runat="server">
    <div>
        <div class ="overlay" style ="position:relative ">

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
                <p>
                    星核獵手團隊中最後加入的成員。
                    曾與螺絲咕姆在信息領域進行了交鋒，
                    銀狼沒有攻破螺絲咕姆的防禦，螺絲咕姆則沒有阻止銀狼離開。
                    銀狼方面認為自己初嘗失敗。
                </p>
                    </details>
            <br />

                <details>
                    <summary class="March7_misson">
                        開拓任務「今天是昨天的明天」
                    </summary>
                    <p>
                        銀狼按照艾利歐的劇本，將一支包括末日獸在內的反物質軍團引到空間站「黑塔」，在支援艙段與卡芙卡通訊並匯合。<br />
                        銀狼黑入空間站系統後找到了用來收容奇物星核的奇物，找到了星核。並且準備好了星核載體，讓卡芙卡按艾利歐的劇
                        本選擇載體。但如果選得慢一些的話，銀狼會很不耐煩地催促，甚至想要代替卡芙卡做選擇。列印出載體之後，卡芙卡
                        將星核放入載體中，二人隨之離去。


                    </p>

                 </details>
           <br />

           <details>
               <summary class="March7_misson">
                   開拓任務「乘槎馭風仙窟游」
               </summary>
               <p>
                   銀狼在星穹列車躍遷至羅浮玉界門後，駭入系統，打開玉界門，並給天舶司留下了自己的印戳。
               </p>
            </details>
          <br />

            <details>
                <summary class="March7_misson">
                    同行任務·星核獵手「朋克洛德精神」
                </summary>
                <p>
                    銀狼在與卡芙卡一同進入空間站「黑塔」期間，曾打算尋找名為「朋克洛德精神」的遊戲卡帶（奇物）
                    ，並在空間站各處留下了電子塗鴉作為駭入空間站的後門程序。「黑塔」網絡安全工程師倫納德在篩查
                    空間站網絡安全時發現了銀狼的行蹤，追查銀狼時被銀狼反向駭入並大出洋相，不過黑塔還是允許倫納
                    德繼續調查銀狼造成的網絡安全問題。<br /><br />
                    倫納德與開拓者一同追查銀狼留下的電子塗鴉，最後發現銀狼追尋的「朋克洛德精神」被送進了黑塔的
                    模擬宇宙內，二人去黑塔的辦公室調查時，恰好目睹黑塔和螺絲咕姆因理念不合打算關停模擬宇宙，於
                    是開拓者便在螺絲咕姆的允許下進入模擬宇宙調查。<br /><br />
                    在模擬宇宙內，開拓者看到了銀狼的全息影像，螺絲咕姆稱這是銀狼過去訪問模擬宇宙留下的足跡，途
                    中銀狼還不忘對模擬宇宙內的黑塔人偶一番嘲諷：「笑死，這兒還有個黑塔小人」。在與銀狼一同抵達
                    模擬宇宙的最深處，即「朋克洛德精神」所在的位置後，銀狼的「影像」突然對開拓者和螺絲咕姆說話
                    ——原來銀狼在偷聽到模擬宇宙即將關停的消息後決定鋌而走險，利用全息影像假裝成模擬宇宙的歷史
                    痕跡並利用開拓者抵達了「朋克洛德精神」所在的位置，而關停模擬宇宙的消息則是螺絲咕姆和黑塔故
                    意放出的假消息，為的就是引誘銀狼出手，放置於此的「朋克洛德精神」只是一個副本。銀狼與螺絲咕
                    姆對峙期間拷貝好了「朋克洛德精神」的副本，或者說是「朋克洛德精神」副本的副本，正打算繼續和
                    螺絲咕姆分個高下時，卻得知黑塔在空間外關停了她的全部76個「遊戲帳號」，銀狼只得急切地帶著「
                    朋克洛德精神」的副本離開模擬宇宙。<br /><br />
                    在吃了一場敗仗後，卡芙卡挖苦了銀狼一番，詢問銀狼接下來打算如何恢復她的76個帳號，銀狼則表示
                    要前往位於庇爾波因特的網絡公司總部，卡芙卡表示艾利歐的下一個「劇本」中有自己，因此無法陪銀
                    狼前往。銀狼即刻動身前往庇爾波因特，一邊走，一邊玩起了「朋克洛德精神」。<br /><br />

                </p>
             </details>
            <br />

           <details>
                <summary class="March7_misson">
                    冒險任務「星際決勝慶典」
                </summary>
                <p>
                    銀狼不長記性地以玩家的身份潛入黑塔空間站的決勝樂園參加遊戲。在假面愚者喬瓦尼離開後，銀狼跳出
                    來與開拓者和三月七對話，表示自己只是過來打遊戲，提醒兩人注意提防喬瓦尼。她表示經過上次遊戲帳
                    號大封禁的事件後，黑塔應該已經滿意了。
                    在決賽中，銀狼作為第三個對手出戰，最終不敵開拓者和三月七。因為其受星際和平公司通緝的關係，銀
                    狼駭入了決賽競技場的電子設備，用全息投影參加了比賽。
                    在開拓者和三月七奪冠後，銀狼將會作為表演賽選手隨機出場。但是會吐槽每次參賽都要駭入一次設備，很麻煩。
                </p>

          </details>
            <br />

          <details>
               <summary class="March7_misson">
                    開拓任務「喧譁與躁動」
               </summary>
                <p>
                    在列車躍遷時開拓者的睡夢裡，開拓者見到了薩姆和銀狼在白日夢酒店貴賓休息區的影像。影像里，銀狼詢問
                    薩姆如何引領「他們」入局，薩姆稱「將真相如數奉上，他們自然會赴約」。
                    黑天鵝帶領開拓者回歸現實後，銀狼把家族隱瞞的信息發給了列車組的瓦爾特，再由瓦爾特轉發給開拓者，並
                    且告知了薩姆已經開始行動的消息。
                </p>
          </details>
            <br />

        <details>
            <summary class="March7_misson">
                夜間車廂|跨越星海的通訊 第三日
            </summary>
            <p>
                在和開拓者打電話時，銀狼稱流螢正在練習用薩姆烤蛋糕，並說最近流螢在花很長的時間挑選衣服，在即將抖落出
                更多流螢的趣事時被流螢奪下電話。流螢離開去處理再次失敗的蛋糕後，銀狼再次與開拓者通話，對流螢的單純
                （純情）表示無奈，警告開拓者不要耍弄流螢的心意
            </p>
        </details>
       <br />

        <details>
            <summary class="March7_misson">
                開拓任務「再見，匹諾康尼」
            </summary>
            <p>
                銀狼在打電玩時結識了花火。她用一大筆酬勞和自己的劇本委託花火加入匹諾康尼的大戲中，確保流螢能平安度過「第三次死亡」。
                流螢的下一幕劇本開始前，銀狼用投影與流螢見面，邀請流螢趁著自由活動時間好好玩玩，被流螢以還缺少一次死亡為由謝絕。之後
                ，銀狼幫流螢抹消了家族對她的通緝，向流螢傳達了卡芙卡和刃的叮囑後自行離開。開拓任務結束後，花火在發給開拓者的簡訊中暗
                示了銀狼的委託。
            </p>
        </details>
        <br />

        <details>
            <summary class="March7_misson">
                冒險任務「摺紙小鳥對對碰」
            </summary>
            <p>
                銀狼用投影和開拓者搭話，並毫不客氣地果斷否定了開拓者「對我念念不忘」的妄想，說明這款遊戲是家族對公司的示好後借開拓者的
                ID給自己開了個遊戲帳戶一起試玩摺紙小鳥對對碰。在試著玩了玩遊戲、得到了自己形象的摺紙小鳥後，銀狼直接用自己的摺紙小鳥霸
                占了街機初號機。在尋找其他街機的路上，銀狼也是不斷在吐槽，要麼是吐槽遊戲，要麼是調侃三月七。在與開拓者前往熱砂的時刻尋
                找赤紅挑戰街機時，銀狼和開拓者看著一隻腳下踩著赤紅小鳥的氣泡鋰犬和一瓶蘇樂達鬥嘴。兩人本來只是在看戲，但開拓者被氣炸了
                的蘇樂達崩暈，被流螢叫醒。銀狼再次否定了開拓者「銀狼對我念念不忘」的妄想，暫時拒絕了流螢拍合照的建議，而是拉著流螢一起
                參與遊戲試玩，並且用信號干擾插件解決了流螢被獵犬通緝的隱憂。可是……<br />
                與開拓者玩了一把之後，流螢開始上頭了，想在之後和開拓者再玩幾局。如果開拓者表示需要考慮考慮，銀狼就會護犢子表示「別欺負老
                實人」。流螢如此主動搞得銀狼有些吃醋，吐槽開拓者是不是有什麼「對螢特攻寶具」——自己邀請流螢打遊戲時流螢就興致缺缺，不公
                平慘了。這還沒完。當開拓者用流螢形象的摺紙小鳥再次給流螢打出暴擊後，銀狼猜測開拓者是不是戀愛養成遊戲老手，而當流螢表示想
                和開拓者一起玩戀愛養成遊戲之後，銀狼終於發現流螢要被開拓者拐跑了，忙不迭攆走了開拓者，拉著流螢特訓遊戲去了。<br />
                當開拓者與翡翠的代打NPC挑戰結束、邀請流螢一起拍合照時，銀狼鼓勵了流螢一把，並吐槽這遊戲果然就是個白盒。拍完合照之後，銀狼
                帶著流螢去了綠洲的時刻野餐，稱之後要和開拓者聯機，讓開拓者把時間空下來。



            </p>
        </details>
        <br />

        <details>
            <summary class="March7_misson">
                冒險任務「初花習劍錄」
                if線：機械降神·奪主
            </summary>
            <p>
                銀狼在玩「以太戰線」時得知出現了同時展現出機械和異形雙屬性的稀有以太靈後打算給自己也捕一隻，多方打聽後得知了關於「機械靈魂」
                的情報，便與羅浮仙舟的遊戲同好公輸師傅合作尋找具有「機械靈魂」的稀有機械，為自己也逮一隻稀有以太靈。<br /><br />
                銀狼使用最逼真的全息投影來到羅浮工造司，偶遇了來到工造司尋機提升劍術實力的開拓者和三月七。幾人聊天時，公輸師傅也來到現場。銀
                狼表示自己會幫助三月七贏下與公司專員林登·斯科特的劍斗，但要三月七和開拓者幫助自己降下「機械靈魂」。<br /><br />
                在三月七、開拓者和公輸師傅的幫助下，銀狼竟然真的得到了一隻具有雙屬性（機械靈魂）的機巧鳥以太靈。銀狼也沒有食言，她為三月七的
                雙劍粗糙焊接了駭客人工智慧程序。<br /><br />
                鬥劍當天，在駭客程序的幫助下，三月七直接駭入了斯科特搬來的公司機甲，輕鬆擊敗了斯科特。而銀狼看熱鬧不嫌事大地嫌棄玩家們已經看
                膩了斯科特學動物叫，要求斯科特把原有的學豬叫的賭約換成「用豬叫唱蘇樂達廣告歌」，表示自從流螢從匹諾康尼回來後就一直學那首歌自
                己不勝其擾，並且在被斯科特戳穿星核獵手身份後用社會性死亡滅了斯科特的口——她看到了機甲內斯科特的瀏覽記錄並大聲朗讀：《霸道機
                甲愛上我》、《無機帝國羅曼史》……，讓斯科特落荒而逃。<br />

            </p>
        </details>
        <br />

        <details>
            <summary class="March7_misson">
                冒險任務「星天演武儀典」
            </summary>
            <p>
                流螢從開拓者處得知有參賽者打扮成王下一桶用「星河獵手——薩姆」參賽後向逗留在羅浮的銀狼查證情況。據流螢的簡訊所述，銀狼笑得前仰
                後合幾乎窒息，最後才承認並非自己所為。
            </p>
        </details>



            <p>------------------------------------------------------------------------------------</p>
            <header style = "text-align:center ; font-size:25px">
                <strong>角色相關</strong>
            </header>
            <ul>
                <li>
                    銀狼為《崩壞系列》前作角色「烏拉爾銀狼」布洛妮婭·扎伊切克的米哈遊知名演員。銀狼的中
                    日雙語CV同前作角色布洛妮婭，和《崩壞3》世界泡角色布朗尼（迷城駭兔）一樣，繼承了布洛
                    妮婭強調駭客的一面。
                </li>
                <li>
                    「通過銀狼的角色PV「有點意思」可知，星際和平公司對銀狼的懸賞金額為51億信用點。
                </li>
                <li>
                    星核獵手入侵「黑塔」空間站時，玩心大發的銀狼利用黑客技術，讓奇物「定分槍」給自己打了
                    個滿分，並留下了一串亂碼。之後玩家使用銀狼角色調查定分槍時，定分槍會為銀狼打一個110
                    分——而滿分是一百分。
                </li>
                <li>
                    銀狼初上線時，官方多次以遭到銀狼駭入的名義舉行各種小活動
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

                          <asp:Image id="img_silver" runat="server"  ImageUrl="~/img/Personal/Silver.png" class="personalImage" />

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
                        <asp:Label runat="server" Text='<%#Eval("attribute") + "‧ " + Eval("path")%> ' />
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
