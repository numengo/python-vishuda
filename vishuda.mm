<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="vishuda" FOLDED="false" ID="ID_244004206" CREATED="1601987431072" MODIFIED="1601987442507" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<node TEXT="personas" POSITION="right" ID="ID_873965533" CREATED="1587552096281" MODIFIED="1601987470309">
<icon BUILTIN="executable"/>
<edge COLOR="#0000ff"/>
<node TEXT="User" ID="ID_1921857962" CREATED="1586000757746" MODIFIED="1586000761002">
<node TEXT="extends" ID="ID_1076814678" CREATED="1596882750530" MODIFIED="1596883061561">
<node TEXT="ngoschema.instances.Entity" ID="ID_417138982" CREATED="1600966857836" MODIFIED="1601995413191"/>
</node>
<node TEXT="primaryKeys" ID="ID_1384030366" CREATED="1609171892294" MODIFIED="1609171897921">
<node TEXT="username" ID="ID_1025330344" CREATED="1609171898448" MODIFIED="1609171900169"/>
</node>
<node TEXT="properties" ID="ID_227726329" CREATED="1586000762921" MODIFIED="1586000766679">
<node TEXT="email" ID="ID_1544754767" CREATED="1586000767974" MODIFIED="1586000777286"/>
<node TEXT="username" ID="ID_432397740" CREATED="1586000778284" MODIFIED="1586000781329">
<node TEXT="default" ID="ID_386426415" CREATED="1586000857444" MODIFIED="1586000859147">
<node TEXT="{{this.email}}" ID="ID_1052888824" CREATED="1586000876708" MODIFIED="1586000879642"/>
</node>
</node>
<node TEXT="githubUsername" ID="ID_1409892566" CREATED="1586000781883" MODIFIED="1586000791876"/>
<node TEXT="firstName" ID="ID_1967399802" CREATED="1586000793666" MODIFIED="1586000795955"/>
<node TEXT="lastName" ID="ID_1191108044" CREATED="1586000800488" MODIFIED="1586000803806"/>
<node TEXT="fullName" ID="ID_217446082" CREATED="1586000804130" MODIFIED="1586000807439">
<node TEXT="default" ID="ID_917169927" CREATED="1586000808286" MODIFIED="1586000810422">
<node TEXT="{{this.firstName}} {{this.lastName}}" ID="ID_351281857" CREATED="1586001426257" MODIFIED="1586001437710"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="app" POSITION="right" ID="ID_1600056861" CREATED="1601988030779" MODIFIED="1601988036226">
<edge COLOR="#007c00"/>
<node TEXT="Model" ID="ID_445573632" CREATED="1601988091351" MODIFIED="1601988100750">
<node TEXT="extends" ID="ID_1864385661" CREATED="1596882750530" MODIFIED="1596883061561">
<node TEXT="ngoschema.instances.Instance" ID="ID_297416115" CREATED="1600966857836" MODIFIED="1621418522250">
<icon BUILTIN="button_cancel"/>
</node>
<node TEXT="ngoschema.instances.Entity" ID="ID_1949442662" CREATED="1600966857836" MODIFIED="1601995406747"/>
</node>
<node TEXT="abstract" ID="ID_1306849918" CREATED="1612100323230" MODIFIED="1612100341031">
<node TEXT="true" ID="ID_1026045888" CREATED="1612100341957" MODIFIED="1612100344887"/>
</node>
<node TEXT="primaryKeys" ID="ID_719812270" CREATED="1609606018387" MODIFIED="1621536526814">
<node TEXT="canonicalName" ID="ID_269728349" CREATED="1609606029022" MODIFIED="1609606155753"/>
</node>
</node>
<node TEXT="Fixture" ID="ID_87914631" CREATED="1601988103321" MODIFIED="1601988105785">
<node TEXT="extends" ID="ID_954739414" CREATED="1596882750530" MODIFIED="1596883061561">
<node TEXT="ngoschema.instances.Entity" ID="ID_711710091" CREATED="1600966857836" MODIFIED="1601995406747"/>
</node>
<node TEXT="primaryKeys" ID="ID_277861182" CREATED="1621422206748" MODIFIED="1621422215993">
<node TEXT="canonicalName" ID="ID_1635636761" CREATED="1621422216622" MODIFIED="1621422343201"/>
</node>
<node TEXT="properties" ID="ID_1411018499" CREATED="1597206116625" MODIFIED="1597206121651">
<node TEXT="model" ID="ID_1938604866" CREATED="1610534224756" MODIFIED="1610534231748">
<node TEXT="Model" ID="ID_1383977022" CREATED="1610534234706" MODIFIED="1610534237683"/>
</node>
<node TEXT="pk" ID="ID_1374427348" CREATED="1610534243652" MODIFIED="1610534248228">
<node TEXT="true" ID="ID_40888298" CREATED="1610534250806" MODIFIED="1610534252295"/>
</node>
<node TEXT="fields" ID="ID_1964957371" CREATED="1597206131371" MODIFIED="1597206133210">
<node TEXT="type" ID="ID_1078519054" CREATED="1597208641592" MODIFIED="1597208645875">
<node TEXT="object" ID="ID_1795520009" CREATED="1597208646243" MODIFIED="1597208647823"/>
</node>
</node>
</node>
</node>
<node TEXT="View" ID="ID_1559467191" CREATED="1601988536246" MODIFIED="1601988542537">
<node TEXT="extends" ID="ID_1129527038" CREATED="1601988542859" MODIFIED="1601988549739">
<node TEXT="ngoschema.protocols.Serializer" ID="ID_105870460" CREATED="1601988550180" MODIFIED="1610197906311"/>
</node>
</node>
<node TEXT="App" ID="ID_1094845549" CREATED="1601988074677" MODIFIED="1601988081303">
<node TEXT="extends" ID="ID_442859082" CREATED="1601988470208" MODIFIED="1601988477135">
<node TEXT="ngoschema.instances.Instance" ID="ID_538310152" CREATED="1600966857836" MODIFIED="1621418531898">
<icon BUILTIN="button_cancel"/>
</node>
<node TEXT="ngoschema.instances.Entity" ID="ID_1811918460" CREATED="1601988482539" MODIFIED="1609606189553"/>
</node>
<node TEXT="primaryKeys" ID="ID_1490934799" CREATED="1609606018387" MODIFIED="1609606028480">
<node TEXT="canonicalName" ID="ID_651336269" CREATED="1609606029022" MODIFIED="1609606155753"/>
</node>
<node TEXT="properties" ID="ID_135061906" CREATED="1601988497069" MODIFIED="1601988498594">
<node TEXT="models" ID="ID_103554749" CREATED="1601988499592" MODIFIED="1609606201370">
<icon BUILTIN="very_positive"/>
<node TEXT="Model" ID="ID_1377463575" CREATED="1601988516731" MODIFIED="1601988521816"/>
</node>
<node TEXT="fixtures" ID="ID_963075250" CREATED="1601988504846" MODIFIED="1609606201371">
<icon BUILTIN="very_positive"/>
<node TEXT="Fixture" ID="ID_186523776" CREATED="1601988523439" MODIFIED="1601988530494"/>
</node>
<node TEXT="views" ID="ID_274236930" CREATED="1601988508527" MODIFIED="1609606201371">
<icon BUILTIN="very_positive"/>
<node TEXT="View" ID="ID_971307254" CREATED="1601988532175" MODIFIED="1601988533857"/>
</node>
<node TEXT="shop" ID="ID_409565235" CREATED="1614150214564" MODIFIED="1614150220159">
<node TEXT="Shop" ID="ID_704762901" CREATED="1614150242376" MODIFIED="1614150244985"/>
</node>
<node TEXT="cms" ID="ID_432166417" CREATED="1614150220687" MODIFIED="1614150222197">
<node TEXT="Cms" ID="ID_676329726" CREATED="1614150247179" MODIFIED="1614150260441"/>
</node>
</node>
</node>
<node TEXT="Shop" ID="ID_167682662" CREATED="1614150224171" MODIFIED="1614150227363">
<node TEXT="lazyLoading" ID="ID_857285780" CREATED="1621503914512" MODIFIED="1621503919404">
<node TEXT="true" ID="ID_1026245957" CREATED="1621503919727" MODIFIED="1621503922358"/>
</node>
<node TEXT="properties" ID="ID_837825609" CREATED="1614150593679" MODIFIED="1614151207222">
<node TEXT="catalogs" ID="ID_390295180" CREATED="1614151207701" MODIFIED="1621503613353">
<icon BUILTIN="very_positive"/>
<node TEXT="Fixture" ID="ID_847507762" CREATED="1601988523439" MODIFIED="1601988530494"/>
</node>
<node TEXT="products" ID="ID_368851727" CREATED="1614151210567" MODIFIED="1621503613354">
<icon BUILTIN="very_positive"/>
<node TEXT="Fixture" ID="ID_212458338" CREATED="1601988523439" MODIFIED="1601988530494"/>
</node>
<node TEXT="manufacturers" ID="ID_765813615" CREATED="1614151788897" MODIFIED="1621503613354">
<icon BUILTIN="very_positive"/>
<node TEXT="Fixture" ID="ID_1831975658" CREATED="1601988523439" MODIFIED="1601988530494"/>
</node>
</node>
</node>
<node TEXT="Cms" ID="ID_1762157746" CREATED="1614150227705" MODIFIED="1614150237638">
<node TEXT="extends" ID="ID_134162404" CREATED="1614150521205" MODIFIED="1614150522974">
<node TEXT="ngomm_cms.nodes.PageNode" ID="ID_1297817837" CREATED="1614150523901" MODIFIED="1621502087235"/>
</node>
</node>
</node>
<node TEXT="documentation" FOLDED="true" POSITION="right" ID="ID_1023669565" CREATED="1602422829756" MODIFIED="1606509127392">
<icon BUILTIN="button_cancel"/>
<edge COLOR="#007c7c"/>
<node TEXT="Vishuda" ID="ID_18607518" CREATED="1602422834615" MODIFIED="1602422840324"/>
<node TEXT="Vishuda is a language/framework to quickly create robust and powerful APIs." ID="ID_350289075" CREATED="1602422841656" MODIFIED="1602425169367"/>
<node TEXT="It is an abstraction to describe an application and its different components. The definition of the API is given using a schema based on an extension of json-schema (language to describe a valid structure of json data)." ID="ID_1416769187" CREATED="1602422953580" MODIFIED="1602425197242"/>
<node TEXT="Vishuda is based on an extension of json-schema to make it useable to describe classes and inheritance." ID="ID_518178126" CREATED="1602423182527" MODIFIED="1602423535401"/>
<node TEXT="Given the schema of an object, Vishuda uses metaprogramming to build a class prototype fully equiped, that the user can complete with a minimum of coding." ID="ID_1628949757" CREATED="1602423398989" MODIFIED="1602423705843"/>
<node TEXT="The class will have all its properties &quot;typed&quot;, meaning descriptors are built for the getters/setters of each properties to automatically check the inputs are valid." ID="ID_98592431" CREATED="1602423731428" MODIFIED="1602423842334"/>
<node TEXT="Basically, it is decorating the complete class with the types defined in the schema." ID="ID_1970028126" CREATED="1602528472558" MODIFIED="1602528517818"/>
<node TEXT="Many details of implementation can be already given in the schema (default values, required values, variable dependencies, de/serialization options, etc...)." ID="ID_1013150747" CREATED="1602423843261" MODIFIED="1602425258526"/>
<node TEXT="In the schema, variables can be expressed as Jinja2 expressions or Python code, and their value will be evaluated in their context at runtime." ID="ID_13026629" CREATED="1602425502459" MODIFIED="1602425580719"/>
<node TEXT="Built objects and arrays can be used as standard collections, making the code in the scope of the API very pythonic and natural. They also support lazy-loading, ensuring that a variable and its dependencies are properly loaded, initialized and validated only when it is accessed." ID="ID_753208421" CREATED="1602424114615" MODIFIED="1602425320303"/>
<node TEXT="Objects are automatically built with a logger, exception handling, type checking of inputs, flexible de/serialization in different formats (json, xml, yaml)." ID="ID_1157965252" CREATED="1602424211986" MODIFIED="1602527473009"/>
<node TEXT="As all types are compiled at initialization, the resulting API is very fast and yet very robust with a minimum code implementation." ID="ID_1938121872" CREATED="1602424930544" MODIFIED="1602426005739"/>
<node TEXT="It allows you to provide an interface of your application to others, without having to disclose your own implementation, and to make reusable libraries with less dependencies, sharing only the schemas as common interfaces." ID="ID_1005601351" CREATED="1602424744801" MODIFIED="1602528618791"/>
<node TEXT="Vishuda defines a framework of basic objects and interfaces to quickly define new apps or extend existing ones." ID="ID_704448729" CREATED="1602527619137" MODIFIED="1602527894553"/>
<node TEXT="As the schema used to define most of the API is in json-schema, the remaining coding in Python should only be business implementation." ID="ID_1050189403" CREATED="1602527901768" MODIFIED="1602528705150"/>
<node TEXT="Existing libraries allow to automatically create interfaces to other frameworks for web apps such as Django, Django Rest Framework, Django CMS, Django Shop; or for scientific calculations to generate corresponding code in other languages (cpp, c, fmi, modelica, matlab, amesim). Contact Numengo for consultancy." ID="ID_50281975" CREATED="1602528739089" MODIFIED="1602535832588"/>
</node>
<node TEXT="https://github.com/wighawag/template-ethereum-contracts" POSITION="right" ID="ID_844039625" CREATED="1615277876567" MODIFIED="1615277885964" LINK="https://github.com/wighawag/template-ethereum-contracts">
<icon BUILTIN="button_cancel"/>
<edge COLOR="#7c7c00"/>
</node>
</node>
</map>
