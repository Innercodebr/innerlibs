<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Struct Money
   </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Struct Money
   ">
    <meta name="generator" content="docfx 2.37.2.0">
    
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" href="../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../styles/docfx.css">
    <link rel="stylesheet" href="../styles/main.css">
    <meta property="docfx:navrel" content="../toc.html">
    <meta property="docfx:tocrel" content="toc.html">
    
    
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              
              <a class="navbar-brand" href="../index.html">
                <img id="logo" class="svg" src="../logo.svg" alt="">
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="InnerLibs.Money">
  
  
  <h1 id="InnerLibs_Money" data-uid="InnerLibs.Money" class="text-break">Struct Money
  </h1>
  <div class="markdown level0 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Estrutura que representa valores em dinheiro de uma determinada <span class="xref">System.Globalization.CultureInfo</span>. Utiliza uma API (<a href="http://fixer.io" data-raw-source="http://fixer.io" sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">http://fixer.io</a>) para conversão de moedas.</p>
</div>
  <div class="markdown level0 conceptual"></div>
  <div class="inheritedMembers">
    <h5>Inherited Members</h5>
    <div>
      <span class="xref">System.ValueType.Equals(System.Object)</span>
    </div>
    <div>
      <span class="xref">System.ValueType.GetHashCode()</span>
    </div>
    <div>
      <span class="xref">System.Object.Equals(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.ReferenceEquals(System.Object, System.Object)</span>
    </div>
    <div>
      <span class="xref">System.Object.GetType()</span>
    </div>
  </div>
  <h6><strong>Namespace</strong>: <a class="xref" href="InnerLibs.html">InnerLibs</a></h6>
  <h6><strong>Assembly</strong>: InnerLibs.dll</h6>
  <h5 id="InnerLibs_Money_syntax">Syntax</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public struct Money</code></pre>
  </div>
  <h3 id="constructors">Constructors
  </h3>
  
  
  <a id="InnerLibs_Money__ctor_" data-uid="InnerLibs.Money.#ctor*"></a>
  <h4 id="InnerLibs_Money__ctor_System_Decimal_" data-uid="InnerLibs.Money.#ctor(System.Decimal)">Money(Decimal)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Cria uma nova instancia de moeda</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public Money(decimal Value = 0M)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Valor</p>
</td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money__ctor_" data-uid="InnerLibs.Money.#ctor*"></a>
  <h4 id="InnerLibs_Money__ctor_System_Decimal_System_Globalization_CultureInfo_" data-uid="InnerLibs.Money.#ctor(System.Decimal,System.Globalization.CultureInfo)">Money(Decimal, CultureInfo)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Cria uma nova instancia de moeda</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public Money(decimal Value, CultureInfo Culture)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Valor</p>
</td>
      </tr>
      <tr>
        <td><span class="xref">System.Globalization.CultureInfo</span></td>
        <td><span class="parametername">Culture</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Cultura</p>
</td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money__ctor_" data-uid="InnerLibs.Money.#ctor*"></a>
  <h4 id="InnerLibs_Money__ctor_System_Decimal_System_String_System_String_" data-uid="InnerLibs.Money.#ctor(System.Decimal,System.String,System.String)">Money(Decimal, String, String)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Cria uma nova instancia de moeda</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public Money(decimal Value, string ISOCurrencySymbol, string CurrencySymbol = &quot;&quot;)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Valor</p>
</td>
      </tr>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">ISOCurrencySymbol</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Simbolo de moeda, ISO ou nome da cultura</p>
</td>
      </tr>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">CurrencySymbol</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h3 id="properties">Properties
  </h3>
  
  
  <a id="InnerLibs_Money_CurrencySymbol_" data-uid="InnerLibs.Money.CurrencySymbol*"></a>
  <h4 id="InnerLibs_Money_CurrencySymbol" data-uid="InnerLibs.Money.CurrencySymbol">CurrencySymbol</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Simbolo de moeda</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public string CurrencySymbol { get; }</code></pre>
  </div>
  <h5 class="propertyValue">Property Value</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_ISOCurrencySymbol_" data-uid="InnerLibs.Money.ISOCurrencySymbol*"></a>
  <h4 id="InnerLibs_Money_ISOCurrencySymbol" data-uid="InnerLibs.Money.ISOCurrencySymbol">ISOCurrencySymbol</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Simbolo de moeda utilizada em cambio (ISO)</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public string ISOCurrencySymbol { get; }</code></pre>
  </div>
  <h5 class="propertyValue">Property Value</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_MoneyString_" data-uid="InnerLibs.Money.MoneyString*"></a>
  <h4 id="InnerLibs_Money_MoneyString" data-uid="InnerLibs.Money.MoneyString">MoneyString</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">String do valor formatado como moeda</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public string MoneyString { get; }</code></pre>
  </div>
  <h5 class="propertyValue">Property Value</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_Value_" data-uid="InnerLibs.Money.Value*"></a>
  <h4 id="InnerLibs_Money_Value" data-uid="InnerLibs.Money.Value">Value</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public decimal Value { get; set; }</code></pre>
  </div>
  <h5 class="propertyValue">Property Value</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h3 id="methods">Methods
  </h3>
  
  
  <a id="InnerLibs_Money_ConvertCurrency_" data-uid="InnerLibs.Money.ConvertCurrency*"></a>
  <h4 id="InnerLibs_Money_ConvertCurrency_System_Globalization_CultureInfo_" data-uid="InnerLibs.Money.ConvertCurrency(System.Globalization.CultureInfo)">ConvertCurrency(CultureInfo)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Converte de uma moeda para a outra utilizando a api <a href="http://cryptonator.com" data-raw-source="http://cryptonator.com" sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">http://cryptonator.com</a></p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public Money ConvertCurrency(CultureInfo Culture)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Globalization.CultureInfo</span></td>
        <td><span class="parametername">Culture</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Cultura</p>
</td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_ConvertCurrency_" data-uid="InnerLibs.Money.ConvertCurrency*"></a>
  <h4 id="InnerLibs_Money_ConvertCurrency_System_String_" data-uid="InnerLibs.Money.ConvertCurrency(System.String)">ConvertCurrency(String)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Converte de uma moeda para a outra utilizando a api <a href="http://cryptonator.com" data-raw-source="http://cryptonator.com" sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">http://cryptonator.com</a></p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public Money ConvertCurrency(string Symbol)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">Symbol</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Simbolo de moeda, ISO ou nome da cultura</p>
</td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_GetCultureInfosByCurrencySymbol_" data-uid="InnerLibs.Money.GetCultureInfosByCurrencySymbol*"></a>
  <h4 id="InnerLibs_Money_GetCultureInfosByCurrencySymbol_System_String_" data-uid="InnerLibs.Money.GetCultureInfosByCurrencySymbol(System.String)">GetCultureInfosByCurrencySymbol(String)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Traz uma lista de <span class="xref">System.Globalization.CultureInfo</span> que utilizam uma determinada moeda de acordo com o simbolo, simbolo ISO ou</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static List&lt;CultureInfo&gt; GetCultureInfosByCurrencySymbol(string Currency)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">Currency</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Moeda</p>
</td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Collections.Generic.List</span>&lt;<span class="xref">System.Globalization.CultureInfo</span>&gt;</td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_ToString_" data-uid="InnerLibs.Money.ToString*"></a>
  <h4 id="InnerLibs_Money_ToString" data-uid="InnerLibs.Money.ToString">ToString()</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">String do valor formatado como moeda, é um alias para <a class="xref" href="InnerLibs.Money.html#InnerLibs_Money_MoneyString">MoneyString</a></p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public override string ToString()</code></pre>
  </div>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="overrides">Overrides</h5>
  <div><span class="xref">System.ValueType.ToString()</span></div>
  
  
  <a id="InnerLibs_Money_ToString_" data-uid="InnerLibs.Money.ToString*"></a>
  <h4 id="InnerLibs_Money_ToString_System_Int32_" data-uid="InnerLibs.Money.ToString(System.Int32)">ToString(Int32)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">String do valor formatado como moeda</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public object ToString(int Precision)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Precision</span></td>
        <td><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="1" sourceendlinenumber="1">Precisao de casas decimais</p>
</td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Object</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h3 id="operators">Operators
  </h3>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Addition(InnerLibs.Money,InnerLibs.Money)">Addition(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_Addition(InnerLibs.Money,System.Decimal)">Addition(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_Addition(InnerLibs.Money,System.Double)">Addition(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_Addition(InnerLibs.Money,System.Int32)">Addition(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_InnerLibs_Money_System_String_" data-uid="InnerLibs.Money.op_Addition(InnerLibs.Money,System.String)">Addition(Money, String)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static string operator +(Money Value, string Text)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">Text</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Addition(System.Decimal,InnerLibs.Money)">Addition(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Addition(System.Double,InnerLibs.Money)">Addition(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Addition(System.Int32,InnerLibs.Money)">Addition(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Addition(System.Int64,InnerLibs.Money)">Addition(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator +(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Addition_" data-uid="InnerLibs.Money.op_Addition*"></a>
  <h4 id="InnerLibs_Money_op_Addition_System_String_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Addition(System.String,InnerLibs.Money)">Addition(String, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static string operator +(string Text, Money Value)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">Text</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Concatenate_" data-uid="InnerLibs.Money.op_Concatenate*"></a>
  <h4 id="InnerLibs_Money_op_Concatenate_InnerLibs_Money_System_String_" data-uid="InnerLibs.Money.op_Concatenate(InnerLibs.Money,System.String)">Concatenate(Money, String)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">Not supported in c#</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">Text</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Concatenate_" data-uid="InnerLibs.Money.op_Concatenate*"></a>
  <h4 id="InnerLibs_Money_op_Concatenate_System_String_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Concatenate(System.String,InnerLibs.Money)">Concatenate(String, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">Not supported in c#</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td><span class="parametername">Text</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.String</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Division(InnerLibs.Money,InnerLibs.Money)">Division(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_Division(InnerLibs.Money,System.Decimal)">Division(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_Division(InnerLibs.Money,System.Double)">Division(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_Division(InnerLibs.Money,System.Int32)">Division(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Division(System.Decimal,InnerLibs.Money)">Division(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Division(System.Double,InnerLibs.Money)">Division(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Division(System.Int32,InnerLibs.Money)">Division(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Division_" data-uid="InnerLibs.Money.op_Division*"></a>
  <h4 id="InnerLibs_Money_op_Division_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Division(System.Int64,InnerLibs.Money)">Division(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator /(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Equality(InnerLibs.Money,InnerLibs.Money)">Equality(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_Equality(InnerLibs.Money,System.Decimal)">Equality(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_Equality(InnerLibs.Money,System.Double)">Equality(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_Equality(InnerLibs.Money,System.Int32)">Equality(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Equality(System.Decimal,InnerLibs.Money)">Equality(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Equality(System.Double,InnerLibs.Money)">Equality(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Equality(System.Int32,InnerLibs.Money)">Equality(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Equality_" data-uid="InnerLibs.Money.op_Equality*"></a>
  <h4 id="InnerLibs_Money_op_Equality_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Equality(System.Int64,InnerLibs.Money)">Equality(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator ==(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThan(InnerLibs.Money,InnerLibs.Money)">GreaterThan(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_GreaterThan(InnerLibs.Money,System.Decimal)">GreaterThan(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_GreaterThan(InnerLibs.Money,System.Double)">GreaterThan(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_GreaterThan(InnerLibs.Money,System.Int32)">GreaterThan(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThan(System.Decimal,InnerLibs.Money)">GreaterThan(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThan(System.Double,InnerLibs.Money)">GreaterThan(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThan(System.Int32,InnerLibs.Money)">GreaterThan(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThan_" data-uid="InnerLibs.Money.op_GreaterThan*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThan_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThan(System.Int64,InnerLibs.Money)">GreaterThan(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator&gt;(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(InnerLibs.Money,InnerLibs.Money)">GreaterThanOrEqual(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(InnerLibs.Money,System.Decimal)">GreaterThanOrEqual(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(InnerLibs.Money,System.Double)">GreaterThanOrEqual(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(InnerLibs.Money,System.Int32)">GreaterThanOrEqual(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(System.Decimal,InnerLibs.Money)">GreaterThanOrEqual(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(System.Double,InnerLibs.Money)">GreaterThanOrEqual(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(System.Int32,InnerLibs.Money)">GreaterThanOrEqual(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_GreaterThanOrEqual_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_GreaterThanOrEqual_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_GreaterThanOrEqual(System.Int64,InnerLibs.Money)">GreaterThanOrEqual(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &gt;=(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Implicit_" data-uid="InnerLibs.Money.op_Implicit*"></a>
  <h4 id="InnerLibs_Money_op_Implicit_InnerLibs_Money__System_Decimal" data-uid="InnerLibs.Money.op_Implicit(InnerLibs.Money)~System.Decimal">Implicit(Money to Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static implicit operator decimal (Money v)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">v</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Implicit_" data-uid="InnerLibs.Money.op_Implicit*"></a>
  <h4 id="InnerLibs_Money_op_Implicit_System_Decimal__InnerLibs_Money" data-uid="InnerLibs.Money.op_Implicit(System.Decimal)~InnerLibs.Money">Implicit(Decimal to Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static implicit operator Money(decimal v)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">v</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Implicit_" data-uid="InnerLibs.Money.op_Implicit*"></a>
  <h4 id="InnerLibs_Money_op_Implicit_System_Double__InnerLibs_Money" data-uid="InnerLibs.Money.op_Implicit(System.Double)~InnerLibs.Money">Implicit(Double to Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static implicit operator Money(double v)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">v</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Implicit_" data-uid="InnerLibs.Money.op_Implicit*"></a>
  <h4 id="InnerLibs_Money_op_Implicit_System_Int16__InnerLibs_Money" data-uid="InnerLibs.Money.op_Implicit(System.Int16)~InnerLibs.Money">Implicit(Int16 to Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static implicit operator Money(short v)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int16</span></td>
        <td><span class="parametername">v</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Implicit_" data-uid="InnerLibs.Money.op_Implicit*"></a>
  <h4 id="InnerLibs_Money_op_Implicit_System_Int32__InnerLibs_Money" data-uid="InnerLibs.Money.op_Implicit(System.Int32)~InnerLibs.Money">Implicit(Int32 to Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static implicit operator Money(int v)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">v</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Implicit_" data-uid="InnerLibs.Money.op_Implicit*"></a>
  <h4 id="InnerLibs_Money_op_Implicit_System_Int64__InnerLibs_Money" data-uid="InnerLibs.Money.op_Implicit(System.Int64)~InnerLibs.Money">Implicit(Int64 to Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static implicit operator Money(long v)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">v</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Inequality(InnerLibs.Money,InnerLibs.Money)">Inequality(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_Inequality(InnerLibs.Money,System.Decimal)">Inequality(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_Inequality(InnerLibs.Money,System.Double)">Inequality(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_Inequality(InnerLibs.Money,System.Int32)">Inequality(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Inequality(System.Decimal,InnerLibs.Money)">Inequality(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Inequality(System.Double,InnerLibs.Money)">Inequality(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Inequality(System.Int32,InnerLibs.Money)">Inequality(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Inequality_" data-uid="InnerLibs.Money.op_Inequality*"></a>
  <h4 id="InnerLibs_Money_op_Inequality_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Inequality(System.Int64,InnerLibs.Money)">Inequality(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator !=(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThan(InnerLibs.Money,InnerLibs.Money)">LessThan(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_LessThan(InnerLibs.Money,System.Decimal)">LessThan(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_LessThan(InnerLibs.Money,System.Double)">LessThan(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_LessThan(InnerLibs.Money,System.Int32)">LessThan(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThan(System.Decimal,InnerLibs.Money)">LessThan(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThan(System.Double,InnerLibs.Money)">LessThan(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThan(System.Int32,InnerLibs.Money)">LessThan(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThan_" data-uid="InnerLibs.Money.op_LessThan*"></a>
  <h4 id="InnerLibs_Money_op_LessThan_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThan(System.Int64,InnerLibs.Money)">LessThan(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThanOrEqual(InnerLibs.Money,InnerLibs.Money)">LessThanOrEqual(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_LessThanOrEqual(InnerLibs.Money,System.Decimal)">LessThanOrEqual(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_LessThanOrEqual(InnerLibs.Money,System.Double)">LessThanOrEqual(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_LessThanOrEqual(InnerLibs.Money,System.Int32)">LessThanOrEqual(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThanOrEqual(System.Decimal,InnerLibs.Money)">LessThanOrEqual(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThanOrEqual(System.Double,InnerLibs.Money)">LessThanOrEqual(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThanOrEqual(System.Int32,InnerLibs.Money)">LessThanOrEqual(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_LessThanOrEqual_" data-uid="InnerLibs.Money.op_LessThanOrEqual*"></a>
  <h4 id="InnerLibs_Money_op_LessThanOrEqual_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_LessThanOrEqual(System.Int64,InnerLibs.Money)">LessThanOrEqual(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static bool operator &lt;=(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Like_" data-uid="InnerLibs.Money.op_Like*"></a>
  <h4 id="InnerLibs_Money_op_Like_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Like(InnerLibs.Money,InnerLibs.Money)">Like(Money, Money)</h4>
  <div class="markdown level1 summary"><p sourcefile="obj/api/InnerLibs.Money.yml" sourcestartlinenumber="2" sourceendlinenumber="2">Verifica se 2 valores sao da mesma moeda</p>
</div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">Not supported in c#</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Boolean</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Multiply(InnerLibs.Money,InnerLibs.Money)">Multiply(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(Money Value2, Money Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_Multiply(InnerLibs.Money,System.Decimal)">Multiply(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_Multiply(InnerLibs.Money,System.Double)">Multiply(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_Multiply(InnerLibs.Money,System.Int32)">Multiply(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Multiply(System.Decimal,InnerLibs.Money)">Multiply(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Multiply(System.Double,InnerLibs.Money)">Multiply(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Multiply(System.Int32,InnerLibs.Money)">Multiply(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Multiply_" data-uid="InnerLibs.Money.op_Multiply*"></a>
  <h4 id="InnerLibs_Money_op_Multiply_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Multiply(System.Int64,InnerLibs.Money)">Multiply(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator *(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_OnesComplement_" data-uid="InnerLibs.Money.op_OnesComplement*"></a>
  <h4 id="InnerLibs_Money_op_OnesComplement_InnerLibs_Money_" data-uid="InnerLibs.Money.op_OnesComplement(InnerLibs.Money)">OnesComplement(Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static object operator ~(Money Value)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Object</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_InnerLibs_Money_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Subtraction(InnerLibs.Money,InnerLibs.Money)">Subtraction(Money, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(Money Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_InnerLibs_Money_System_Decimal_" data-uid="InnerLibs.Money.op_Subtraction(InnerLibs.Money,System.Decimal)">Subtraction(Money, Decimal)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(Money Value2, decimal Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_InnerLibs_Money_System_Double_" data-uid="InnerLibs.Money.op_Subtraction(InnerLibs.Money,System.Double)">Subtraction(Money, Double)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(Money Value2, double Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_InnerLibs_Money_System_Int32_" data-uid="InnerLibs.Money.op_Subtraction(InnerLibs.Money,System.Int32)">Subtraction(Money, Int32)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(Money Value2, int Value1)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_System_Decimal_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Subtraction(System.Decimal,InnerLibs.Money)">Subtraction(Decimal, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(decimal Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Decimal</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_System_Double_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Subtraction(System.Double,InnerLibs.Money)">Subtraction(Double, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(double Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Double</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_System_Int32_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Subtraction(System.Int32,InnerLibs.Money)">Subtraction(Int32, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(int Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int32</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  
  
  <a id="InnerLibs_Money_op_Subtraction_" data-uid="InnerLibs.Money.op_Subtraction*"></a>
  <h4 id="InnerLibs_Money_op_Subtraction_System_Int64_InnerLibs_Money_" data-uid="InnerLibs.Money.op_Subtraction(System.Int64,InnerLibs.Money)">Subtraction(Int64, Money)</h4>
  <div class="markdown level1 summary"></div>
  <div class="markdown level1 conceptual"></div>
  <h5 class="decalaration">Declaration</h5>
  <div class="codewrapper">
    <pre><code class="lang-csharp hljs">public static Money operator -(long Value1, Money Value2)</code></pre>
  </div>
  <h5 class="parameters">Parameters</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Name</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><span class="xref">System.Int64</span></td>
        <td><span class="parametername">Value1</span></td>
        <td></td>
      </tr>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td><span class="parametername">Value2</span></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h5 class="returns">Returns</h5>
  <table class="table table-bordered table-striped table-condensed">
    <thead>
      <tr>
        <th>Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a class="xref" href="InnerLibs.Money.html">Money</a></td>
        <td></td>
      </tr>
    </tbody>
  </table>
  <h3 id="extensionmethods">Extension Methods</h3>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_CreateDictionary__1___0_">ClassTools.CreateDictionary&lt;Type&gt;(Type)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_GetProperties_System_Object_System_Reflection_BindingFlags_">ClassTools.GetProperties(Object, BindingFlags)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_GetProperties_System_Object_">ClassTools.GetProperties(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_GetPropertyValue_System_Object_System_String_System_Type_System_Boolean_">ClassTools.GetPropertyValue(Object, String, Type, Boolean)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_GetPropertyValue__1_System_Object_System_String_System_Boolean_">ClassTools.GetPropertyValue&lt;Type&gt;(Object, String, Boolean)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_GetPropertyValue_System_Object_System_String_System_Boolean_">ClassTools.GetPropertyValue(Object, String, Boolean)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_HasProperty_System_Object_System_String_">ClassTools.HasProperty(Object, String)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsArrayOf__1_System_Object_">ClassTools.IsArrayOf&lt;T&gt;(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsDictionary_System_Object_">ClassTools.IsDictionary(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsIn__1___0_System_Collections_Generic_IEnumerable___0__System_Collections_Generic_IEqualityComparer___0__">ClassTools.IsIn&lt;Type&gt;(Type, IEnumerable&lt;Type&gt;, IEqualityComparer&lt;Type&gt;)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsIn__1___0_System_String_System_Collections_Generic_IEqualityComparer_System_Char__">ClassTools.IsIn&lt;Type&gt;(Type, String, IEqualityComparer&lt;Char&gt;)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsInAny__1___0_System_Collections_Generic_IEnumerable___0____System_Collections_Generic_IEqualityComparer___0__">ClassTools.IsInAny&lt;Type&gt;(Type, IEnumerable&lt;Type&gt;[], IEqualityComparer&lt;Type&gt;)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsList_System_Object_">ClassTools.IsList(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsNotIn__1___0_System_Collections_Generic_IEnumerable___0__System_Collections_Generic_IEqualityComparer___0__">ClassTools.IsNotIn&lt;Type&gt;(Type, IEnumerable&lt;Type&gt;, IEqualityComparer&lt;Type&gt;)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsNotIn__1___0_System_String_System_Collections_Generic_IEqualityComparer_System_Char__">ClassTools.IsNotIn&lt;Type&gt;(Type, String, IEqualityComparer&lt;Char&gt;)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_IsType__1_System_Object_">ClassTools.IsType&lt;T&gt;(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_NullifyProperties__1___0_">ClassTools.NullifyProperties&lt;Type&gt;(Type)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_SetPropertyValue__1_System_Object_System_String___0_">ClassTools.SetPropertyValue&lt;Type&gt;(Object, String, Type)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_SetPropertyValueFromCollection__1_System_Object_System_String_System_Collections_CollectionBase_">ClassTools.SetPropertyValueFromCollection&lt;Type&gt;(Object, String, CollectionBase)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.ClassTools.html#InnerLibs_ClassTools_ToFlatString_System_Object_System_String_">ClassTools.ToFlatString(Object, String)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.DataManipulation.html#InnerLibs_DataManipulation_GetDbType_System_Object_">DataManipulation.GetDbType(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Converter.html#InnerLibs_Converter_DefineEmptyList__1___0_">Converter.DefineEmptyList&lt;T&gt;(T)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Converter.html#InnerLibs_Converter_ChangeType__2___1_">Converter.ChangeType&lt;ToType, FromType&gt;(FromType)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.JsonViewer.html#InnerLibs_JsonViewer_CreateNode_System_Object_">JsonViewer.CreateNode(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Mathematic.html#InnerLibs_Mathematic_IsBetween__1___0_System_Object_System_Object_">Mathematic.IsBetween&lt;Type&gt;(Type, Object, Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Text.html#InnerLibs_Text_SerializeJSON_System_Object_System_String_">Text.SerializeJSON(Object, String)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Text.html#InnerLibs_Text_ToExtensiveForm_InnerLibs_Money_">Text.ToExtensiveForm(Money)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Verify.html#InnerLibs_Verify_IsNumber_System_Object_">Verify.IsNumber(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Verify.html#InnerLibs_Verify_IsNotNumber_System_Object_">Verify.IsNotNumber(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Verify.html#InnerLibs_Verify_IfBlank__1_System_Object___0_">Verify.IfBlank&lt;T&gt;(Object, T)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Verify.html#InnerLibs_Verify_NullIf__1___0_System_Func___0_System_Boolean__">Verify.NullIf&lt;T&gt;(T, Func&lt;T, Boolean&gt;)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.Web.html#InnerLibs_Web_CreateFromAjax__1___0__System_String_System_String_System_Collections_Specialized_NameValueCollection_System_String_System_Text_Encoding_">Web.CreateFromAjax&lt;Type&gt;(ref Type, String, String, NameValueCollection, String, Encoding)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.WinForms.html#InnerLibs_WinForms_GetCastedValue_System_Object_">WinForms.GetCastedValue(Object)</a>
  </div>
  <div>
      <a class="xref" href="InnerLibs.WinForms.html#InnerLibs_WinForms_CastValueForControl_System_Object__System_Object_">WinForms.CastValueForControl(ref Object, Object)</a>
  </div>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
          <div class="container">
            <span class="pull-right">
              <a href="#top">Back to top</a>
            </span>
            
            <span>Generated by <strong>DocFX</strong></span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../styles/docfx.js"></script>
    <script type="text/javascript" src="../styles/main.js"></script>
  </body>
</html>