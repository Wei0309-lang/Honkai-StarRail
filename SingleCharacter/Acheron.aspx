<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Acheron.aspx.cs" Inherits="Acheron" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href ="~/StyleSheet.css" rel="stylesheet" type="text/css" /> 
    <title>Acheron</title>
</head>
    <body>
      
      
     

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:HonkaiStarConnectionString %>'
              SelectCommand="SELECT [Name], [Path], [url], [pc], [attribute] FROM [character] WHERE ([Name] = @Name)" 
              ProviderName='<%$ ConnectionStrings:HonkaiStarConnectionString.ProviderName %>'>

              <SelectParameters>
                  <asp:Parameter DefaultValue="黃泉" Name="Name" Type="String"></asp:Parameter>
          </SelectParameters>
      </asp:SqlDataSource>
          

      
  
    
    <div  style = "background-image:url('/img/Background/Acheron_Back.webp') ;  top:0px ;" class = "BackGroundDefine">
    </div>
    
    
    

    <form id="form1" runat="server">
    <div>
        <div class ="overlay" style ="position:relative ">

        <div style =" width:500px "  >

            <header style="font-size : 30px">
                <b>黃泉</b>
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
            
            <p>自稱「巡海遊俠」的旅人，本名不詳。身佩一柄長刀，獨行銀河。</p>
                

            <p>
                淡漠寡言，劍出如紫電般迅猛，卻從來只以刀鞘戰鬥，收而不發。
            </p>

           
          
            <p>-----------------------------------------------------------------------------------</p>
        <header style = "text-align:center ; font-size:25px">
            <strong>角色相關經歷</strong>
        </header>
           
            <details>
                
                <summary class ="March7_misson">
                    黃泉的過去
                </summary>
                
                    「出雲」和「高天原」兩顆行星圍繞著一輪漆黑的大日<span style="color:red">(虛無)</span>公轉<br /><br />

                    高天原先一步受到了「虛無」的浸染，惡獸「八百萬神」自高天原降臨，屠戮出雲國的人類。在漫長的
                    抗爭中，出雲國折劍七萬三十三柄，用禍神的軀體鑄為尊「護世詔刀」十二名。雷電忘川守芽衣就是詔
                    刀持有者之一。借十二詔刀偉力，出雲國在殘酷的生存戰爭中取得勝利，建立起了虹霓繚亂的城邦。<br /><br />

                    然而好景不長，「虛無」的神力開始影響出雲國，人類逐漸淪為惡鬼。出雲國折劍十二柄，鑄成負世二刀——其一為「始」
                    ，其二為「終」。芽衣持有「始」，不斷斬殺著變作惡鬼的同胞，直到自己也被「虛無」浸染。<br /><br />

                    出雲和高天原終歸於虛無。芽衣自此成為逐漸喪失自我存在的「自滅者」，走上了「虛無」的命途。她汲取著「虛無」的力
                    量，卻將這力量用來對抗「虛無」——她自視為「黃泉的守望者」，扼守著通向「虛無」深淵的道路，守望不願墮入「虛無」
                    的人們離開「虛無」，甚至希望著有一日能將「虛無」斬斷。在漫長的尋索後，她確信自己的目的地就在分割現實與虛無的
                    「黑網」深處，那裡潛藏著名為「第IX機關」的秘密。<br /><br />
                    
                    黃泉在俄爾刻龍邂逅了來自推羅的無名客扶里巴斯。扶里巴斯決心探索IX的深處，在與黃泉同行三十天後，她將自己發射到
                    了IX黑洞的奇點裡去，結果卻是「死了十四個日夜」，化為一潭死水。<br /><br />

                    之後，黃泉又與曾為無名客和匹諾康尼的解放者，彼時已是巡海遊俠的博雷克林·鐵爾南的亡魂同行。百餘年間，她幫助鐵爾
                    南引渡了巡海遊俠同伴的執念形成的「血罪靈」，使那些英雄不再為「虛無」所困，最終則是引渡了鐵爾南自己。鐵爾南的血
                    罪靈消散前，將自己的遺物——一枚象徵著英雄的子彈託付給了黃泉。為了將遺物交還到巡海遊俠手中，黃泉開始以「巡海遊
                    俠」的名義活動，試圖找到失蹤已久的遊俠們。<br /><br />

                    懷著從命途枷鎖中解救世人的信念，黃泉在「虛無」的命途上越行越遠。儘管「沉眠無相者從不瞥視任何人」
                    ，但黃泉已然獲得了令使級別的「虛無」力量。

            </details>
           <br />

            <details>
                <summary class ="March7_misson">開拓任務「喧譁與騷動」</summary> 

                <p>
                    黃泉襲擊了受邀前往匹諾康尼參加諧樂大典的「冥火大公」阿弗利特。阿弗利特的子嗣們為他創造了逃走的機會，黃泉原本並
                    不打算殺死阿弗利特，但阿弗利特執意讓黃泉殺死他以踐行「毀滅」命途，與此同時他也看穿了黃泉並非巡海遊俠，而是某位
                    星神的令使。於是黃泉成全了他，奪取了他的邀請函，自稱巡海遊俠來到匹諾康尼落座。黃泉認為阿弗利特以將死之軀化作烈
                    火踐行命途的行為是值得尊敬的。<br /><br />

                    黑天鵝曾邀請黃泉共舞，並企圖查看黃泉的記憶，調查黃泉是否真的殺了冥火大公，但卻反被黃泉記憶中深邃的海洋所震撼，
                    未能讀取黃泉的記憶，而黃泉也表示自己忘了冥火大公那幫人是誰，想了很久才終於想起來。<br /><br />

                    在開拓者進入匹諾康尼的過程中，黃泉在開拓者的夢裡出現，詢問開拓者自己是否與其見過，以及詢問開拓者如果夢境過於美好
                    ，那麼開拓者願不願意永遠停留在夢中；如果夢終究會破碎，開拓者又會怎麼做。她提醒開拓者，其接下來會遭遇許多挫折，見
                    證許多悲劇，最後目中所見只餘黑白二色。
                    <br /><br />
                   <span style="color:red; display:block ; text-align:center">
                       “但請相信，在那黑白的世界中會有一點紅色稍縱即逝，<br />
                            但在你做出抉擇之時，<br />
                             它必將再度示現……	”

                   </span><br /><br />

                    交代完一切後，黃泉留下血淚與開拓者告別，同時開拓者被黃泉擊倒，因死亡的刺激而含淚從夢中醒來。<br /><br />
                    <span style="color:gray; display:block ; text-align:center">
                        “	而你，要仔細咀嚼其意義—— <br />
                               ——然後，<br />
                               回到清醒的世界去。<br />
                             我們都將在那裡找到答案。	”

                    </span><br /><br />

                    開拓者入住白日夢酒店後，在自己的房間內被砂金逼迫合作。黃泉此時來到，趕走了砂金，開拓者見到黃泉後詢問她是否與自己見過。<br />
                    與開拓者分別後不久，黃泉與黑天鵝共舞一曲，知道了其憶者的身份。<br /><br />
                    到了黃金的時刻後，黃泉聽說一群假面愚者在街頭鬧事便打算去處理此事，結果反而因一系列機緣巧合與米沙一起被一群黑幫找麻煩，
                    偶然路過的開拓者和流螢幫助二人解了圍，黃泉感謝了二人，並提到了自己與黑天鵝的接觸。期間，黃泉感知到附近有自己看不見的
                    東西，得知是「直率、純真、有童心」的孩子才能看見的鐘表小子後苦笑著感嘆自己也過了那個年紀。<br /><br />

                    開拓者和黑天鵝一同進入夢境中的白日夢酒店調查時，恰好遇到了同樣在此處的黃泉，三人同行。在酒店前台處遇到流螢後，黃泉三
                    人卻在毫無準備的情況下目睹流螢被「何物朝向死亡」斬殺，事後黃泉安撫了開拓者，後悔自己沒能第一時間拔刀，並提到自己出於
                    某種原因不能輕易拔刀。她告誡開拓者，在拔刀之前一定要確定「真正的敵人」，行動時不要猶豫，也發誓自己一定會抓住造成流螢
                    死亡的真正的罪魁禍首。之後，她對著流螢殘留的螢光說道：<br /><br />
                    
                    <span style="color:gray ; display:block ; text-align:center">
                        “	願死亡結束你漫長的夢……<br />
                            引領你歸還…清醒的世界。	”

                    </span><br /><br />

                    三人繼續調查，回到大堂遭遇星核獵手薩姆後與其開戰。在黃泉與薩姆激鬥時，黑天鵝突然帶著開拓者一起傳送離開，徒留黃泉和薩姆
                    繼續戰鬥。砂金告訴開拓者，黃泉的真實身份是某位星神的令使，會帶來死亡和終局，黑天鵝也認為黃泉隱瞞了許多東西，她十分可疑
                    ，一切嫌疑似乎被引導到了黃泉的身上。<br />



                </p>

           </details>
            <br />

               <details>
                   <summary class="March7_misson">開拓任務「鴿群中的貓」</summary>
                   <p>
                       薩姆在與黃泉戰鬥時詢問黃泉為什麼不拔刀，黃泉則拋出了一個疑問。<br /><br />

                       <span style="color:mediumpurple ; display:block ; text-align:center">
                        	
                        “	獵手，你還會做夢嗎？夢見那些因你而死的人。	”<br />

                        </span><br />

                       黃泉稱薩姆的「時候」未到，提出就此休戰，點破薩姆剛才根本沒想殺死開拓者，只是想驅散她和黑天鵝。她詢問這是不是劇本的一部分
                       ，薩姆稱自己的劇本向來只有幾行，認為命運只有一種，但在結局到來前他還有選擇的權力。薩姆反過來詢問黃泉究竟是什麼人，黃泉沒
                       有直接回應，而是稱自己知道薩姆鎧甲下的真面目，希望能幫到薩姆。薩姆拒絕了黃泉的幫助和脫下鎧甲的請求，而是提醒她如果對鐘錶
                       匠的遺產感興趣，就去調查隱瞞了夢境的過去與未來及「死亡」存在的家族，還提醒她星穹列車不是她的敵人。<br /><br />

                       黃泉臨走前詢問薩姆艾利歐的劇本中是否有她的部分，薩姆回答稱劇本中完全沒有黃泉的存在，並且對黃泉先前的提問給出了答覆：「不會」
                       ——因為他生來沒有做夢的機能，只為冰冷的現實而活，為了一點光亮燃燒，直到化作死灰，所以他很羨慕黃泉。<br /><br />

                       之後，黃泉離開夢境的白日夢酒店，突然出現在瓦爾特·楊的身邊，瓦爾特看到黃泉的相貌後眼神十分複雜，黃泉也在得知瓦爾特的名字後若
                       有所思。黃泉點破了瓦爾特手杖的真面目 ——能夠召喚黑洞的利器。聽到別人點破了自己的武器 ， 瓦爾特十分警惕，讓她亮明身份並表明
                       來意。黃泉 稱自己拜訪匹諾康尼只是為了一個久遠的遺願——找到鐘錶匠的遺產，因此希望和星穹列車進行合作，與瓦爾特共享了一些情報
                       。另一方面，黑天鵝找到了黃泉的客房，嘗試通過黃泉從阿弗利特處奪來的邀請函窺見黃泉前來匹諾康尼的記憶，然而一無所獲，反倒聽見了
                       阿弗利特的女兒「大麗花」康士坦絲的聲音，對方希望與黑天鵝進行交易，分享關於黃泉的情報，隨後被黃泉冒用了身份的巡海遊俠波提歐向
                       黑天鵝打來電話，表示要殺了黃泉。<br /><br />

                       黃泉與瓦爾特交流了一路以來的見聞，詢問瓦爾特如果生命執意選擇沉溺在這片美夢中，他們是否還需要出手干涉那個結果，瓦爾特向她講述
                       了他原先所在的世界中一個男人創造「精神的亞當」的故事，雖然創造亞當的男人沒能守住那場沒有痛苦的美夢，但他並沒有失敗，內心一直
                       堅信著人性的可能性。黃泉看出瓦爾特想要確認自己與平行世界中另一人的相似性，回答稱自己也曾在旅行於多個世界的過程里看到過許多容
                       貌相似的故人，目睹他們的命運走過相似的軌跡，而瓦爾特所講的這個故事，也與她曾經的經歷有所重合——在黃泉的經歷中，她獨自一人，
                       殺死了那個男人。黃泉講述了自己過去的經歷，明示了自己和虛無命途的關係。<br /><br />

                       <span style="  display:block ">
    	                        “	鳥兒們展翅高翔，試圖觸碰天頂，只因太陽就在那裡。<br />
                                    那麼，如果當最後的鳥兒終於飛上天際，卻看見光芒的盡頭並非太陽，而是漆黑的大日……<br />
                           <span style="color:red ; display:block ; text-align:center">

                                那我們究竟是為了什麼…才要向光而行？	”

                            </span>
                       </span><br /> <br />

                       瓦爾特決定信任黃泉，和黃泉一起進入橡木家系的大本營朝露公館調查，但二人一開始什麼人都沒遇到。翻閱了一些文件後，二人遇到了星期日
                       並提醒他多加留意公司的從中作梗，星期日則反過來提醒瓦爾特他們小心砂金，告訴他們砂金此時已經獨自去了克勞克影視樂園。<br /><br />

                       瓦爾特和黃泉一起與開拓者等人匯合，沒有向其他人告知黃泉的真實身份，此時砂金也恰好發布廣播引誘列車組前往克勞克影視樂園，黃泉與列車組
                       一同前去。砂金聲稱要引爆開拓者體內的星核以摧毀匹諾康尼，因此動用基石中的「存護」令使之力和眾人開戰，並釋放基石中的全部力量轟炸整個
                       樂園，企圖逼迫黃泉出手，黃泉不得不拔刀出鞘，使用等同於「虛無」令使的力量斬向砂金。<br /><br />

                            <span style="color:mediumpurple ; display:block ; text-align:center">

                                “	願為逝者哀哭，泣下如雨，充盈渡川…… <br />
                                    …如潮湧至，領你歸鄉。	”

                            </span><br /><br />
                       
                       砂金被黃泉的一擊斬殺，在夢中進入了「真正的死亡」，來到了IX的萬千表徵之一——一片被虛無籠罩的轉瞬即逝的夢之中。黃泉出現與砂金對話，
                       坦白自己其實不是虛無的令使，或者說虛無的星神從未注視過任何人，揭露了砂金不惜押上自己的性命也要達成的真正目的——找到除了「何物朝向死亡」
                       外另一位能在夢中賦予他「真正的死亡」的人，藉助「夢中的死亡」讓自己成為了第三起命案的犧牲者，在斬斷「同諧」聖洗的同時更加接近鐘錶匠的遺產
                       ，即真正的「匹諾康尼」（流放之地）。 砂金則表示已經有人成功做到進入那裡並成功離開了，那便是花火所說的那另一位無法再開口說話之人 ，而黃泉
                       表示自己知道她的身份。黃泉臨走前，砂金詢問她人們為何要為了死亡而出生在世上，黃泉回應稱雖然結局早已註定，但人們仍然要竭盡所能到達那個結局
                       ，而結局也會因此展現不同的意義，並提醒砂金打開真理醫生給他的「醫囑」。<br /><br />

                    </p>
               </details> 

            <br />

            <details>
            <summary class="March7_misson"> 開拓任務「在我們的時代裡」</summary>
                <p>
                      與砂金的大戰結束後，匹諾康尼的「夢主」歌斐木操縱一群橡木家系的人找到了在克勞克影視樂園的黃泉，打算把黃泉趕出夢境，黃泉拒絕被夢主以強硬手段趕走
                    ，但是同意自行離開，臨行前警告夢主如今的匹諾康尼已經背離同諧，它的未來將是一片虛無，就像沉溺於虛無中的其他世界一樣。<br /><br />

                    黃泉在黑天鵝的幫助下避開了歌斐木的眼線，回到現實後登上星穹列車，見到了帕姆、丹恆和一直在追殺她的波提歐，道出自己寧願冒著被巡海遊俠通緝的風險也要
                    假扮巡海遊俠的原因——引出真正的巡海遊俠，並藉此機會將鐵爾南的遺物交給他們。<br /><br />

                    星期日用「秩序」的力量創造了所有人都能幸福，但卻會永遠被囚禁的「太一之夢」，黃泉等人在黑天鵝的幫助下清醒過來，決定攻破星期日的「太一之夢<br /><br />

                    黃泉認為，歌斐木之所以那麼急著趕走自己正是因為「秩序」無法同化「虛無」命途的力量，如今大部分人已經甘願沉溺在這幸福的幻夢之中，要讓他們也產生脫離夢境的想法
                    ，必須讓這夢境變得危險，激發人們的自救意識，而這樣的壯舉必須由她這位擁有令使級別力量的人做到。<br /><br />

                    黃泉帶著開拓者進入了虛無籠罩的夢中，再度向開拓者提出了第一次相遇時問出的問題，這一次開拓者沒有任何猶豫地給出了回答，黃泉十分滿意，與開拓者道別後，
                    一刀斬開了「太一之夢」，配合波提歐呼喚來的巡海遊俠們一起撼動了「太一之夢」的根基，而開拓者等人也順利擊敗了星期日，「太一之夢」破碎。<br /><br />

                </p>
            </details>

            <br />

            <details>
                <summary class="March7_misson">
                    開拓任務「再見，匹諾康尼」
                </summary>
                <p>
                    黃泉來到流夢礁，在鐵爾南、拉扎莉娜和米哈伊爾的墓前正式地向鐵爾南等無名客道別，與星穹列車組一起對無名客們、加拉赫和流夢礁的居民們表達了敬意。<br /><br />

                    開拓者隨列車組離開匹諾康尼前，可以選擇單獨地與黃泉道別。黃泉向開拓者正式介紹了自己的真正身份，表示自己將要去尋找第IX機關，斬斷虛無的詛咒。<br /><br />

                    最後，黃泉向開拓者們致以祝福。談話過程中，開拓者第一次看到黃泉露出笑容。<br /><br />
                </p>
            </details>

            <br />
           
            <p>------------------------------------------------------------------------------------</p>
            <header style = "text-align:center ; font-size:25px">
                <strong>角色相關</strong>
            </header>
            <ul>
                <li>
                    黃泉真名中間的「忘川守」來源於古代日本公卿、武士出任地方官時的受領名，或僭稱受領名的情況。忘川守即為主管忘川之人。
                </li>
                <li>
                    其英文名「Acheron」在古希臘神話中為怨河阿刻戎，是自深淵流淌而出的四條冥河之一（怒河、怨河、悲河、苦河），阿刻戎擺渡人為卡戎。
                </li>
                <li>
                    黃泉的出身地區「出雲」是位於島根縣東部的令制國和當今島根縣的一個市。
                </li>



            </ul>
            <p>

            </p>
            </div>

            <!--右方Table-->

<div >

     <asp:FormView runat="server" ID="formView1" DataSourceID="SqlDataSource1">
          <ItemTemplate>
        <table runat="server" id = "Table_March7"    style=" width:380px; border :1px ;  " >
           
          <tr >
               <td colspan = "2" style =" height:400px">
                 
                <asp:Image id="img_Kafka" runat="server" ImageUrl = "~/img/Personal/Acheron.webp" class="personalImage" />

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

                     雷電·忘川守·芽衣
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
                   <a target="_blank" href ="https://zh.moegirl.org.cn/%E8%8F%8A%E8%8A%B1%E8%8A%B1 " >菊花花（漢語)</a><br />          
                   <a target="_blank" href="https://zh.moegirl.org.cn/%E6%B3%BD%E5%9F%8E%E7%BE%8E%E9%9B%AA">澤城美雪（日語）</a><br />                          
                                                                                                    Allegra Clark（英語)<br />                        
                                                                                                    朴志胤（韓語)<br /> 
              </td>
      </tr>
      <tr>
          <td class="March7_Table_left">
              所屬團體:
          </td>
          <td class="March7_Table_right">
              自滅者
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
                                     <source src="https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/03/26/7af4751f28e2c4976d5565fca81ee718_8031686535346004429.mp3"/>   
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
                            <source src="https://act-webstatic.hoyoverse.com/event-static-hoyowiki-admin/2024/03/26/1c0963bbcc25b4ce99fe250bcd9c5d60_3821634724243673180.mp3"/>   
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
