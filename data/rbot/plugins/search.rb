


<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>data/rbot/plugins/search.rb at master from jsn/rbot - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    
    

    <meta content="authenticity_token" name="csrf-param" />
<meta content="144bf39f8bd356139fbb768fc1e465387dcb287d" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/stylesheets/bundle_github.css?274c62b0fa5396961fbd444ea6b1ca3feb9e204f" media="screen" rel="stylesheet" type="text/css" />
    

    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundle_jquery.js?feac705db7bad7450550f9b531ff2d76f0ce30c4" type="text/javascript"></script>

    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundle_github.js?7267540807bb3adb6133264d22481c6bff644121" type="text/javascript"></script>

    

      <link rel='permalink' href='/jsn/rbot/blob/b102d281d8bb7fb28f8b31fec983d56452edbd24/data/rbot/plugins/search.rb'>
    

    <meta name="description" content="rbot - ruby irc bot (official repo mirror)" />
  <link href="https://github.com/jsn/rbot/commits/master.atom" rel="alternate" title="Recent Commits to rbot:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob  env-production ">
    


    

    <div id="main">
      <div id="header" class="true">
          <a class="logo" href="https://github.com">
            <img alt="github" class="default svg" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6.svg" />
            <img alt="github" class="default png" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6.png" />
            <!--[if (gt IE 8)|!(IE)]><!-->
            <img alt="github" class="hover svg" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6-hover.svg" />
            <img alt="github" class="hover png" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6-hover.png" />
            <!--<![endif]-->
          </a>

        <div class="topsearch">
    <!--
      make sure to use fully qualified URLs here since this nav
      is used on error pages on other domains
    -->
    <ul class="nav logged_out">
        <li class="pricing"><a href="https://github.com/plans">Signup and Pricing</a></li>
        <li class="explore"><a href="https://github.com/explore">Explore GitHub</a></li>
      <li class="features"><a href="https://github.com/features">Features</a></li>
        <li class="blog"><a href="https://github.com/blog">Blog</a></li>
      <li class="login"><a href="https://github.com/login?return_to=%2Fjsn%2Frbot%2Fblob%2Fmaster%2Fdata%2Frbot%2Fplugins%2Fsearch.rb">Login</a></li>
    </ul>
</div>

      </div>

      
            <div class="site">
      <div class="pagehead repohead vis-public   instapaper_ignore readability-menu">


      <div class="title-actions-bar">
        <h1>
          <a href="/jsn">jsn</a> /
          <strong><a href="/jsn/rbot" class="js-current-repository">rbot</a></strong>
        </h1>
        



            <ul class="pagehead-actions">

        <li>
            <a href="/jsn/rbot/toggle_watch" class="minibutton btn-watch watch-button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '144bf39f8bd356139fbb768fc1e465387dcb287d'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Watch</span></a>
        </li>
            <li><a href="/jsn/rbot/fork" class="minibutton btn-fork fork-button" onclick="var f = document.createElement('form'); f.style.display = 'none'; this.parentNode.appendChild(f); f.method = 'POST'; f.action = this.href;var s = document.createElement('input'); s.setAttribute('type', 'hidden'); s.setAttribute('name', 'authenticity_token'); s.setAttribute('value', '144bf39f8bd356139fbb768fc1e465387dcb287d'); f.appendChild(s);f.submit();return false;"><span><span class="icon"></span>Fork</span></a></li>

      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers ">
            <a href="/jsn/rbot/watchers" title="Watchers" class="tooltipped downwards">
              58
            </a>
          </li>
          <li class="forks">
            <a href="/jsn/rbot/network" title="Forks" class="tooltipped downwards">
              24
            </a>
          </li>
        </ul>
      </li>
    </ul>

      </div>

        

  <ul class="tabs">
    <li><a href="/jsn/rbot" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/jsn/rbot/network" highlight="repo_networkrepo_fork_queue">Network</a>
    <li><a href="/jsn/rbot/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/jsn/rbot/issues" highlight="repo_issues">Issues <span class='counter'>0</span></a></li>


    <li><a href="/jsn/rbot/graphs" highlight="repo_graphsrepo_contributors">Stats &amp; Graphs</a></li>

  </ul>

  
<div class="frame frame-center tree-finder" style="display:none"
      data-tree-list-url="/jsn/rbot/tree-list/b102d281d8bb7fb28f8b31fec983d56452edbd24"
      data-blob-url-prefix="/jsn/rbot/blob/b102d281d8bb7fb28f8b31fec983d56452edbd24"
    >

  <div class="breadcrumb">
    <b><a href="/jsn/rbot">rbot</a></b> /
    <input class="tree-finder-input" type="text" name="query" autocomplete="off" spellcheck="false">
  </div>

    <div class="octotip">
      <p>
        <a href="/jsn/rbot/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever">Dismiss</a>
        <strong>Octotip:</strong> You've activated the <em>file finder</em>
        by pressing <span class="kbd">t</span> Start typing to filter the
        file list. Use <span class="kbd badmono">↑</span> and
        <span class="kbd badmono">↓</span> to navigate,
        <span class="kbd">enter</span> to view files.
      </p>
    </div>

  <table class="tree-browser" cellpadding="0" cellspacing="0">
    <tr class="js-header"><th>&nbsp;</th><th>name</th></tr>
    <tr class="js-no-results no-results" style="display: none">
      <th colspan="2">No matching files</th>
    </tr>
    <tbody class="js-results-list">
    </tbody>
  </table>
</div>

<div id="jump-to-line" style="display:none">
  <h2>Jump to Line</h2>
  <form>
    <input class="textfield" type="text">
    <div class="full-button">
      <button type="submit" class="classy">
        <span>Go</span>
      </button>
    </div>
  </form>
</div>


<div class="subnav-bar">

  <ul class="actions">
    
      <li class="switcher">

        <div class="context-menu-container js-menu-container">
          <span class="text">Current branch:</span>
          <a href="#"
             class="minibutton bigger switcher context-menu-button js-menu-target js-commitish-button btn-branch repo-tree"
             data-master-branch="master"
             data-ref="master">
            <span><span class="icon"></span>master</span>
          </a>

          <div class="context-pane commitish-context js-menu-content">
            <a href="javascript:;" class="close js-menu-close"></a>
            <div class="title">Switch Branches/Tags</div>
            <div class="body pane-selector commitish-selector js-filterable-commitishes">
              <div class="filterbar">
                <div class="placeholder-field js-placeholder-field">
                  <label class="placeholder" for="context-commitish-filter-field" data-placeholder-mode="sticky">Filter branches/tags</label>
                  <input type="text" id="context-commitish-filter-field" class="commitish-filter" />
                </div>

                <ul class="tabs">
                  <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                  <li><a href="#" data-filter="tags">Tags</a></li>
                </ul>
              </div>

                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/master/data/rbot/plugins/search.rb" data-name="master">master</a>
                  </h4>
                </div>

                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.15/data/rbot/plugins/search.rb" data-name="rbot-0.9.15">rbot-0.9.15</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.14/data/rbot/plugins/search.rb" data-name="rbot-0.9.14">rbot-0.9.14</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.13/data/rbot/plugins/search.rb" data-name="rbot-0.9.13">rbot-0.9.13</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.12/data/rbot/plugins/search.rb" data-name="rbot-0.9.12">rbot-0.9.12</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.11-rc3/data/rbot/plugins/search.rb" data-name="rbot-0.9.11-rc3">rbot-0.9.11-rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.11-rc2/data/rbot/plugins/search.rb" data-name="rbot-0.9.11-rc2">rbot-0.9.11-rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.11-rc1/data/rbot/plugins/search.rb" data-name="rbot-0.9.11-rc1">rbot-0.9.11-rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.11/data/rbot/plugins/search.rb" data-name="rbot-0.9.11">rbot-0.9.11</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.10/data/rbot/plugins/search.rb" data-name="rbot-0.9.10">rbot-0.9.10</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/rbot-0.9.9/data/rbot/plugins/search.rb" data-name="rbot-0.9.9">rbot-0.9.9</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/oldmaster/data/rbot/plugins/search.rb" data-name="oldmaster">oldmaster</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/oldfeature/data/rbot/plugins/search.rb" data-name="oldfeature">oldfeature</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/jsn/rbot/blob/last-svn-commit/data/rbot/plugins/search.rb" data-name="last-svn-commit">last-svn-commit</a>
                  </h4>
                </div>

              <div class="no-results" style="display:none">Nothing to show</div>
            </div>
          </div><!-- /.commitish-context-context -->
        </div>

      </li>
  </ul>

  <ul class="subnav">
    <li><a href="/jsn/rbot" class="selected" highlight="repo_source">Files</a></li>
    <li><a href="/jsn/rbot/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/jsn/rbot/branches" class="" highlight="repo_branches">Branches <span class="counter">1</span></a></li>
    <li><a href="/jsn/rbot/tags" class="" highlight="repo_tags">Tags <span class="counter">13</span></a></li>
    <li><a href="/jsn/rbot/downloads" class="blank" highlight="repo_downloads">Downloads <span class="counter">0</span></a></li>
  </ul>

</div>

  
  
  


        

      </div><!-- /.pagehead -->

      




  
  <p class="last-commit">Latest commit to the <strong>master</strong> branch</p>

<div class="commit commit-tease js-details-container">
  <p class="commit-title ">
      <a href="/jsn/rbot"><a href="/jsn/rbot/commit/b102d281d8bb7fb28f8b31fec983d56452edbd24" class="message">imdb plugin: again fixes outdated ratings pattern</a></a>
      
  </p>
  <div class="commit-meta">
    <a href="/jsn/rbot/commit/b102d281d8bb7fb28f8b31fec983d56452edbd24" class="sha-block">commit <span class="sha">b102d281d8</span></a>

    <div class="authorship">
      <img src="https://secure.gravatar.com/avatar/556636c6a433b6866bf2445e77f194be?s=140&d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" alt="" width="20" height="20" class="gravatar" />
      <span class="author-name"><a href="/4poc">4poc</a></span>
      authored <time class="js-relative-date" datetime="2011-09-26T05:44:25-07:00" title="2011-09-26 05:44:25">September 26, 2011</time>

        <span class="committer"><a href="/Oblomov">Oblomov</a>
          committed <time class="js-relative-date" datetime="2011-09-26T05:57:38-07:00" title="2011-09-26 05:57:38">September 26, 2011</time>
        </span>
    </div>
  </div>
</div>


  <div id="slider">

    <div class="breadcrumb" data-path="data/rbot/plugins/search.rb/">
      <b><a href="/jsn/rbot/tree/b102d281d8bb7fb28f8b31fec983d56452edbd24" class="js-rewrite-sha">rbot</a></b> / <a href="/jsn/rbot/tree/b102d281d8bb7fb28f8b31fec983d56452edbd24/data" class="js-rewrite-sha">data</a> / <a href="/jsn/rbot/tree/b102d281d8bb7fb28f8b31fec983d56452edbd24/data/rbot" class="js-rewrite-sha">rbot</a> / <a href="/jsn/rbot/tree/b102d281d8bb7fb28f8b31fec983d56452edbd24/data/rbot/plugins" class="js-rewrite-sha">plugins</a> / search.rb       <span style="display:none" id="clippy_2294" class="clippy-text">data/rbot/plugins/search.rb</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://a248.e.akamai.net/assets.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_2294&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://a248.e.akamai.net/assets.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_2294&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="data/rbot/plugins/search.rb/" data-permalink-url="/jsn/rbot/blob/b102d281d8bb7fb28f8b31fec983d56452edbd24/data/rbot/plugins/search.rb" data-title="data/rbot/plugins/search.rb at master from jsn/rbot - GitHub" data-type="blob">
          <ul class="big-actions">
            <li><a class="file-edit-link minibutton js-rewrite-sha" href="/jsn/rbot/edit/b102d281d8bb7fb28f8b31fec983d56452edbd24/data/rbot/plugins/search.rb" data-method="post"><span>Edit this file</span></a></li>
          </ul>

        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://a248.e.akamai.net/assets.github.com/images/icons/txt.png" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                  <span>328 lines (266 sloc)</span>
                <span>10.246 kb</span>
              </div>
              <ul class="actions">
                <li><a href="/jsn/rbot/raw/master/data/rbot/plugins/search.rb" id="raw-url">raw</a></li>
                  <li><a href="/jsn/rbot/blame/master/data/rbot/plugins/search.rb">blame</a></li>
                <li><a href="/jsn/rbot/commits/master/data/rbot/plugins/search.rb">history</a></li>
              </ul>
            </div>
              <div class="data type-ruby">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
</pre>
          </td>
          <td width="100%">
                <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">#-- vim:sw=2:et</span></div><div class='line' id='LC2'><span class="c1">#++</span></div><div class='line' id='LC3'><span class="c1">#</span></div><div class='line' id='LC4'><span class="c1"># :title: Google and Wikipedia search plugin for rbot</span></div><div class='line' id='LC5'><span class="c1">#</span></div><div class='line' id='LC6'><span class="c1"># Author:: Tom Gilbert (giblet) &lt;tom@linuxbrit.co.uk&gt;</span></div><div class='line' id='LC7'><span class="c1"># Author:: Giuseppe &quot;Oblomov&quot; Bilotta &lt;giuseppe.bilotta@gmail.com&gt;</span></div><div class='line' id='LC8'><span class="c1">#</span></div><div class='line' id='LC9'><span class="c1"># Copyright:: (C) 2002-2005 Tom Gilbert</span></div><div class='line' id='LC10'><span class="c1"># Copyright:: (C) 2006 Tom Gilbert, Giuseppe Bilotta</span></div><div class='line' id='LC11'><span class="c1"># Copyright:: (C) 2006-2007 Giuseppe Bilotta</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="c1"># TODO:: use lr=lang_&lt;code&gt; or whatever is most appropriate to let google know</span></div><div class='line' id='LC14'><span class="c1">#        it shouldn&#39;t use the bot&#39;s location to find the preferred language</span></div><div class='line' id='LC15'><span class="c1"># TODO:: support localized uncyclopedias -- not easy because they have different names</span></div><div class='line' id='LC16'><span class="c1">#        for most languages</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><span class="no">GOOGLE_SEARCH</span> <span class="o">=</span> <span class="s2">&quot;http://www.google.com/search?oe=UTF-8&amp;q=&quot;</span></div><div class='line' id='LC19'><span class="no">GOOGLE_WAP_SEARCH</span> <span class="o">=</span> <span class="s2">&quot;http://www.google.com/m/search?hl=en&amp;q=&quot;</span></div><div class='line' id='LC20'><span class="c1"># GOOGLE_WAP_LINK = /&lt;a accesskey=&quot;(\d)&quot; href=&quot;.*?u=(.*?)&quot;&gt;(.*?)&lt;\/a&gt;/im</span></div><div class='line' id='LC21'><span class="no">GOOGLE_WAP_LINK</span> <span class="o">=</span> <span class="sr">/&lt;a href=&quot;(?:.*?u=(.*?)|(http:\/\/.*?))&quot;&gt;(.*?)&lt;\/a&gt;/im</span></div><div class='line' id='LC22'><span class="no">GOOGLE_CALC_RESULT</span> <span class="o">=</span> <span class="sr">%r{&lt;img src=/images/calc_img\.gif(?: width=40 height=30 alt=&quot;&quot;)?&gt;.*?&lt;h[1-6] class=r[^&gt;]*&gt;&lt;b&gt;(.+?)&lt;/b&gt;}</span></div><div class='line' id='LC23'><span class="no">GOOGLE_COUNT_RESULT</span> <span class="o">=</span> <span class="sr">%r{&lt;font size=-1&gt;Results &lt;b&gt;1&lt;\/b&gt; - &lt;b&gt;10&lt;\/b&gt; of about &lt;b&gt;(.*)&lt;\/b&gt; for}</span></div><div class='line' id='LC24'><span class="no">GOOGLE_DEF_RESULT</span> <span class="o">=</span> <span class="sr">%r{&lt;br/&gt;\s*(.*?)\s*&lt;br/&gt;\s*(.*?)&lt;a href=&quot;(/dictionary\?[^&quot;]*)&quot;[^&gt;]*&gt;(More »)\s*&lt;/a&gt;\s*&lt;br/&gt;}</span></div><div class='line' id='LC25'><span class="no">GOOGLE_TIME_RESULT</span> <span class="o">=</span> <span class="sr">%r{alt=&quot;Clock&quot;&gt;&lt;/td&gt;&lt;td valign=[^&gt;]+&gt;(.+?)&lt;(br|/td)&gt;}</span></div><div class='line' id='LC26'><br/></div><div class='line' id='LC27'><span class="k">class</span> <span class="nc">SearchPlugin</span> <span class="o">&lt;</span> <span class="no">Plugin</span></div><div class='line' id='LC28'>&nbsp;&nbsp;<span class="no">Config</span><span class="o">.</span><span class="n">register</span> <span class="no">Config</span><span class="o">::</span><span class="no">IntegerValue</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s1">&#39;google.hits&#39;</span><span class="p">,</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="mi">3</span><span class="p">,</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:desc</span> <span class="o">=&gt;</span> <span class="s2">&quot;Number of hits to return from Google searches&quot;</span><span class="p">)</span></div><div class='line' id='LC31'>&nbsp;&nbsp;<span class="no">Config</span><span class="o">.</span><span class="n">register</span> <span class="no">Config</span><span class="o">::</span><span class="no">IntegerValue</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s1">&#39;google.first_par&#39;</span><span class="p">,</span></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="mi">0</span><span class="p">,</span></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:desc</span> <span class="o">=&gt;</span> <span class="s2">&quot;When set to n &gt; 0, the bot will return the first paragraph from the first n search hits&quot;</span><span class="p">)</span></div><div class='line' id='LC34'>&nbsp;&nbsp;<span class="no">Config</span><span class="o">.</span><span class="n">register</span> <span class="no">Config</span><span class="o">::</span><span class="no">IntegerValue</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s1">&#39;wikipedia.hits&#39;</span><span class="p">,</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="mi">3</span><span class="p">,</span></div><div class='line' id='LC36'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:desc</span> <span class="o">=&gt;</span> <span class="s2">&quot;Number of hits to return from Wikipedia searches&quot;</span><span class="p">)</span></div><div class='line' id='LC37'>&nbsp;&nbsp;<span class="no">Config</span><span class="o">.</span><span class="n">register</span> <span class="no">Config</span><span class="o">::</span><span class="no">IntegerValue</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s1">&#39;wikipedia.first_par&#39;</span><span class="p">,</span></div><div class='line' id='LC38'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:default</span> <span class="o">=&gt;</span> <span class="mi">1</span><span class="p">,</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:desc</span> <span class="o">=&gt;</span> <span class="s2">&quot;When set to n &gt; 0, the bot will return the first paragraph from the first n wikipedia search hits&quot;</span><span class="p">)</span></div><div class='line' id='LC40'><br/></div><div class='line' id='LC41'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">help</span><span class="p">(</span><span class="n">plugin</span><span class="p">,</span> <span class="n">topic</span><span class="o">=</span><span class="s2">&quot;&quot;</span><span class="p">)</span></div><div class='line' id='LC42'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">case</span> <span class="n">topic</span></div><div class='line' id='LC43'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">when</span> <span class="s2">&quot;search&quot;</span><span class="p">,</span> <span class="s2">&quot;google&quot;</span></div><div class='line' id='LC44'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;</span><span class="si">#{</span><span class="n">topic</span><span class="si">}</span><span class="s2"> &lt;string&gt; =&gt; search google for &lt;string&gt;&quot;</span></div><div class='line' id='LC45'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">when</span> <span class="s2">&quot;gcalc&quot;</span></div><div class='line' id='LC46'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;gcalc &lt;equation&gt; =&gt; use the google calculator to find the answer to &lt;equation&gt;&quot;</span></div><div class='line' id='LC47'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">when</span> <span class="s2">&quot;gdef&quot;</span></div><div class='line' id='LC48'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;gdef &lt;term(s)&gt; =&gt; use the google define mechanism to find a definition of &lt;term(s)&gt;&quot;</span></div><div class='line' id='LC49'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">when</span> <span class="s2">&quot;gtime&quot;</span></div><div class='line' id='LC50'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;gtime &lt;location&gt; =&gt; use the google clock to find the current time at &lt;location&gt;&quot;</span></div><div class='line' id='LC51'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">when</span> <span class="s2">&quot;wp&quot;</span></div><div class='line' id='LC52'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;wp [&lt;code&gt;] &lt;string&gt; =&gt; search for &lt;string&gt; on Wikipedia. You can select a national &lt;code&gt; to only search the national Wikipedia&quot;</span></div><div class='line' id='LC53'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">when</span> <span class="s2">&quot;unpedia&quot;</span></div><div class='line' id='LC54'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;unpedia &lt;string&gt; =&gt; search for &lt;string&gt; on Uncyclopedia&quot;</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;search &lt;string&gt; (or: google &lt;string&gt;) =&gt; search google for &lt;string&gt; | wp &lt;string&gt; =&gt; search for &lt;string&gt; on Wikipedia | unpedia &lt;string&gt; =&gt; search for &lt;string&gt; on Uncyclopedia&quot;</span></div><div class='line' id='LC57'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC58'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC59'><br/></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">google</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC61'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">what</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:words</span><span class="o">].</span><span class="n">to_s</span></div><div class='line' id='LC62'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">what</span><span class="o">.</span><span class="n">match</span><span class="p">(</span><span class="sr">/^define:/</span><span class="p">)</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">google_define</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">what</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC65'><br/></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">searchfor</span> <span class="o">=</span> <span class="no">CGI</span><span class="o">.</span><span class="n">escape</span> <span class="n">what</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># This method is also called by other methods to restrict searching to some sites</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">params</span><span class="o">[</span><span class="ss">:site</span><span class="o">]</span></div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">site</span> <span class="o">=</span> <span class="s2">&quot;site:</span><span class="si">#{</span><span class="n">params</span><span class="o">[</span><span class="ss">:site</span><span class="o">]</span><span class="si">}</span><span class="s2">+&quot;</span></div><div class='line' id='LC70'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC71'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">site</span> <span class="o">=</span> <span class="s2">&quot;&quot;</span></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># It is also possible to choose a filter to remove constant parts from the titles</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># e.g.: &quot;Wikipedia, the free encyclopedia&quot; when doing Wikipedia searches</span></div><div class='line' id='LC75'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">filter</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:filter</span><span class="o">]</span> <span class="o">||</span> <span class="s2">&quot;&quot;</span></div><div class='line' id='LC76'><br/></div><div class='line' id='LC77'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="no">GOOGLE_WAP_SEARCH</span> <span class="o">+</span> <span class="n">site</span> <span class="o">+</span> <span class="n">searchfor</span></div><div class='line' id='LC78'><br/></div><div class='line' id='LC79'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">hits</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:hits</span><span class="o">]</span> <span class="o">||</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;google.hits&#39;</span><span class="o">]</span></div><div class='line' id='LC80'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">hits</span> <span class="o">=</span> <span class="mi">1</span> <span class="k">if</span> <span class="n">params</span><span class="o">[</span><span class="ss">:lucky</span><span class="o">]</span></div><div class='line' id='LC81'><br/></div><div class='line' id='LC82'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">first_pars</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:firstpar</span><span class="o">]</span> <span class="o">||</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;google.first_par&#39;</span><span class="o">]</span></div><div class='line' id='LC83'><br/></div><div class='line' id='LC84'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">single</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:lucky</span><span class="o">]</span> <span class="o">||</span> <span class="p">(</span><span class="n">hits</span> <span class="o">==</span> <span class="mi">1</span> <span class="ow">and</span> <span class="n">first_pars</span> <span class="o">==</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC85'><br/></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">wml</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">httputil</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">raise</span> <span class="k">unless</span> <span class="n">wml</span></div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="o">=&gt;</span> <span class="n">e</span></div><div class='line' id='LC90'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;error googling for </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC91'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC92'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC93'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">results</span> <span class="o">=</span> <span class="n">wml</span><span class="o">.</span><span class="n">match</span><span class="p">(</span><span class="s1">&#39;&lt;p align=&quot;center&quot;&gt;&#39;</span><span class="p">)</span><span class="o">.</span><span class="n">pre_match</span><span class="o">.</span><span class="n">scan</span><span class="p">(</span><span class="no">GOOGLE_WAP_LINK</span><span class="p">)</span></div><div class='line' id='LC94'><br/></div><div class='line' id='LC95'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">results</span><span class="o">.</span><span class="n">length</span> <span class="o">==</span> <span class="mi">0</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;no results found for </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC97'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC98'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC99'><br/></div><div class='line' id='LC100'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">single</span> <span class="o">||=</span> <span class="p">(</span><span class="n">results</span><span class="o">.</span><span class="n">length</span><span class="o">==</span><span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC101'><br/></div><div class='line' id='LC102'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">urls</span> <span class="o">=</span> <span class="nb">Array</span><span class="o">.</span><span class="n">new</span></div><div class='line' id='LC103'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">n</span> <span class="o">=</span> <span class="mi">0</span></div><div class='line' id='LC104'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">results</span> <span class="o">=</span> <span class="n">results</span><span class="o">[</span><span class="mi">0</span><span class="o">.</span><span class="n">.</span><span class="o">.</span><span class="n">hits</span><span class="o">].</span><span class="n">map</span> <span class="p">{</span> <span class="o">|</span><span class="n">res</span><span class="o">|</span></div><div class='line' id='LC105'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">n</span> <span class="o">+=</span> <span class="mi">1</span></div><div class='line' id='LC106'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">t</span> <span class="o">=</span> <span class="n">res</span><span class="o">[</span><span class="mi">2</span><span class="o">].</span><span class="n">ircify_html</span><span class="p">(</span><span class="ss">:img</span> <span class="o">=&gt;</span> <span class="s2">&quot;[%{src} %{alt} %{dimensions}]&quot;</span><span class="p">)</span><span class="o">.</span><span class="n">strip</span></div><div class='line' id='LC107'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">u</span> <span class="o">=</span> <span class="no">URI</span><span class="o">.</span><span class="n">unescape</span><span class="p">(</span><span class="n">res</span><span class="o">[</span><span class="mi">0</span><span class="o">]</span> <span class="o">||</span> <span class="n">res</span><span class="o">[</span><span class="mi">1</span><span class="o">]</span><span class="p">)</span></div><div class='line' id='LC108'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">urls</span><span class="o">.</span><span class="n">push</span><span class="p">(</span><span class="n">u</span><span class="p">)</span></div><div class='line' id='LC109'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">&quot;%{n}%{b}%{t}%{b}%{sep}%{u}&quot;</span> <span class="o">%</span> <span class="p">{</span></div><div class='line' id='LC110'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:n</span> <span class="o">=&gt;</span> <span class="p">(</span><span class="n">single</span> <span class="p">?</span> <span class="s2">&quot;&quot;</span> <span class="p">:</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">n</span><span class="si">}</span><span class="s2">. &quot;</span><span class="p">),</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:sep</span> <span class="o">=&gt;</span> <span class="p">(</span><span class="n">single</span> <span class="p">?</span> <span class="s2">&quot; -- &quot;</span> <span class="p">:</span> <span class="s2">&quot;: &quot;</span><span class="p">),</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">:b</span> <span class="o">=&gt;</span> <span class="no">Bold</span><span class="p">,</span> <span class="ss">:t</span> <span class="o">=&gt;</span> <span class="n">t</span><span class="p">,</span> <span class="ss">:u</span> <span class="o">=&gt;</span> <span class="n">u</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">}</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">params</span><span class="o">[</span><span class="ss">:lucky</span><span class="o">]</span></div><div class='line' id='LC117'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="n">results</span><span class="o">.</span><span class="n">first</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC120'><br/></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result_string</span> <span class="o">=</span> <span class="n">results</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="s2">&quot; | &quot;</span><span class="p">)</span></div><div class='line' id='LC122'><br/></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># If we return a single, full result, change the output to a more compact representation</span></div><div class='line' id='LC124'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">single</span></div><div class='line' id='LC125'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;Result for %s: %s -- %s&quot;</span> <span class="o">%</span> <span class="o">[</span><span class="n">what</span><span class="p">,</span> <span class="n">result_string</span><span class="p">,</span> <span class="no">Utils</span><span class="o">.</span><span class="n">get_first_pars</span><span class="p">(</span><span class="n">urls</span><span class="p">,</span> <span class="n">first_pars</span><span class="p">)</span><span class="o">]</span><span class="p">,</span> <span class="ss">:overlong</span> <span class="o">=&gt;</span> <span class="ss">:truncate</span></div><div class='line' id='LC126'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC128'><br/></div><div class='line' id='LC129'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;Results for </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">: </span><span class="si">#{</span><span class="n">result_string</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">,</span> <span class="ss">:split_at</span> <span class="o">=&gt;</span> <span class="sr">/\s+\|\s+/</span></div><div class='line' id='LC130'><br/></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="k">unless</span> <span class="n">first_pars</span> <span class="o">&gt;</span> <span class="mi">0</span></div><div class='line' id='LC132'><br/></div><div class='line' id='LC133'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="no">Utils</span><span class="o">.</span><span class="n">get_first_pars</span> <span class="n">urls</span><span class="p">,</span> <span class="n">first_pars</span><span class="p">,</span> <span class="ss">:message</span> <span class="o">=&gt;</span> <span class="n">m</span></div><div class='line' id='LC134'><br/></div><div class='line' id='LC135'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC136'><br/></div><div class='line' id='LC137'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">google_define</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">what</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC139'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">wml</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">httputil</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="no">GOOGLE_SEARCH</span> <span class="o">+</span> <span class="no">CGI</span><span class="o">.</span><span class="n">escape</span><span class="p">(</span><span class="n">what</span><span class="p">))</span></div><div class='line' id='LC140'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">raise</span> <span class="k">unless</span> <span class="n">wml</span></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="o">=&gt;</span> <span class="n">e</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;error googling for </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC145'><br/></div><div class='line' id='LC146'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">related_index</span> <span class="o">=</span> <span class="n">wml</span><span class="o">.</span><span class="n">index</span><span class="p">(</span><span class="sr">/Related phrases:/</span><span class="p">,</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">raise</span> <span class="k">unless</span> <span class="n">related_index</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">defs_index</span> <span class="o">=</span> <span class="n">wml</span><span class="o">.</span><span class="n">index</span><span class="p">(</span><span class="sr">/Definitions of &lt;b&gt;/</span><span class="p">,</span> <span class="n">related_index</span><span class="p">)</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">raise</span> <span class="k">unless</span> <span class="n">defs_index</span></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">defs_end</span> <span class="o">=</span> <span class="n">wml</span><span class="o">.</span><span class="n">index</span><span class="p">(</span><span class="sr">/&lt;input/</span><span class="p">,</span> <span class="n">defs_index</span><span class="p">)</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">raise</span> <span class="k">unless</span> <span class="n">defs_end</span></div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="o">=&gt;</span> <span class="n">e</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;no results found for </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">related</span> <span class="o">=</span> <span class="n">wml</span><span class="o">[</span><span class="n">related_index</span><span class="o">.</span><span class="n">.</span><span class="o">.</span><span class="n">defs_index</span><span class="o">]</span></div><div class='line' id='LC159'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">defs</span> <span class="o">=</span> <span class="n">wml</span><span class="o">[</span><span class="n">defs_index</span><span class="o">.</span><span class="n">.</span><span class="o">.</span><span class="n">defs_end</span><span class="o">]</span></div><div class='line' id='LC160'><br/></div><div class='line' id='LC161'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="n">defs</span><span class="o">.</span><span class="n">ircify_html</span><span class="p">(</span><span class="ss">:a_href</span> <span class="o">=&gt;</span> <span class="no">Underline</span><span class="p">),</span> <span class="ss">:split_at</span> <span class="o">=&gt;</span> <span class="p">(</span><span class="no">Underline</span> <span class="o">+</span> <span class="s1">&#39; &#39;</span><span class="p">)</span></div><div class='line' id='LC162'><br/></div><div class='line' id='LC163'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC164'><br/></div><div class='line' id='LC165'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">lucky</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">.</span><span class="n">merge!</span><span class="p">(</span><span class="ss">:lucky</span> <span class="o">=&gt;</span> <span class="kp">true</span><span class="p">)</span></div><div class='line' id='LC167'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">google</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC168'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC169'><br/></div><div class='line' id='LC170'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">gcalc</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">what</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:words</span><span class="o">].</span><span class="n">to_s</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">searchfor</span> <span class="o">=</span> <span class="no">CGI</span><span class="o">.</span><span class="n">escape</span><span class="p">(</span><span class="n">what</span><span class="p">)</span></div><div class='line' id='LC173'><br/></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;Getting gcalc thing: </span><span class="si">#{</span><span class="n">searchfor</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="no">GOOGLE_WAP_SEARCH</span> <span class="o">+</span> <span class="n">searchfor</span></div><div class='line' id='LC176'><br/></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">html</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">httputil</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="o">=&gt;</span> <span class="n">e</span></div><div class='line' id='LC180'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;error googlecalcing </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC183'><br/></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">html</span><span class="o">.</span><span class="n">size</span><span class="si">}</span><span class="s2"> bytes of html recieved&quot;</span></div><div class='line' id='LC185'><br/></div><div class='line' id='LC186'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">intro</span><span class="p">,</span> <span class="n">result</span><span class="p">,</span> <span class="n">junk</span> <span class="o">=</span> <span class="n">html</span><span class="o">.</span><span class="n">split</span><span class="p">(</span><span class="sr">/\s*&lt;br\/&gt;\s*/</span><span class="p">,</span> <span class="mi">3</span><span class="p">)</span></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;result: </span><span class="si">#{</span><span class="n">result</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC188'><br/></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">unless</span> <span class="n">result</span><span class="o">.</span><span class="n">include?</span> <span class="s1">&#39;=&#39;</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;couldn&#39;t calculate </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC193'><br/></div><div class='line' id='LC194'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;replying with: </span><span class="si">#{</span><span class="n">result</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC195'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="n">result</span><span class="o">.</span><span class="n">ircify_html</span></div><div class='line' id='LC196'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC197'><br/></div><div class='line' id='LC198'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">gcount</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC199'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">what</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:words</span><span class="o">].</span><span class="n">to_s</span></div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">searchfor</span> <span class="o">=</span> <span class="no">CGI</span><span class="o">.</span><span class="n">escape</span><span class="p">(</span><span class="n">what</span><span class="p">)</span></div><div class='line' id='LC201'><br/></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;Getting gcount thing: </span><span class="si">#{</span><span class="n">searchfor</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="no">GOOGLE_SEARCH</span> <span class="o">+</span> <span class="n">searchfor</span></div><div class='line' id='LC204'><br/></div><div class='line' id='LC205'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">html</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">httputil</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="o">=&gt;</span> <span class="n">e</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;error googlecounting </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC211'><br/></div><div class='line' id='LC212'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">html</span><span class="o">.</span><span class="n">size</span><span class="si">}</span><span class="s2"> bytes of html recieved&quot;</span></div><div class='line' id='LC213'><br/></div><div class='line' id='LC214'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">results</span> <span class="o">=</span> <span class="n">html</span><span class="o">.</span><span class="n">scan</span><span class="p">(</span><span class="no">GOOGLE_COUNT_RESULT</span><span class="p">)</span></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;results: </span><span class="si">#{</span><span class="n">results</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC216'><br/></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">results</span><span class="o">.</span><span class="n">length</span> <span class="o">!=</span> <span class="mi">1</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;couldn&#39;t count </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC221'><br/></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">result</span> <span class="o">=</span> <span class="n">results</span><span class="o">[</span><span class="mi">0</span><span class="o">][</span><span class="mi">0</span><span class="o">].</span><span class="n">ircify_html</span></div><div class='line' id='LC223'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;replying with: </span><span class="si">#{</span><span class="n">result</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC224'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;total results: </span><span class="si">#{</span><span class="n">result</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC225'><br/></div><div class='line' id='LC226'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC227'><br/></div><div class='line' id='LC228'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">gdef</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC229'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">what</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:words</span><span class="o">].</span><span class="n">to_s</span></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">searchfor</span> <span class="o">=</span> <span class="no">CGI</span><span class="o">.</span><span class="n">escape</span><span class="p">(</span><span class="s2">&quot;define &quot;</span> <span class="o">+</span> <span class="n">what</span><span class="p">)</span></div><div class='line' id='LC231'><br/></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;Getting gdef thing: </span><span class="si">#{</span><span class="n">searchfor</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="no">GOOGLE_WAP_SEARCH</span> <span class="o">+</span> <span class="n">searchfor</span></div><div class='line' id='LC234'><br/></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">html</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">httputil</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="o">=&gt;</span> <span class="n">e</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;error googledefining </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC241'><br/></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="n">html</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">results</span> <span class="o">=</span> <span class="n">html</span><span class="o">.</span><span class="n">scan</span><span class="p">(</span><span class="no">GOOGLE_DEF_RESULT</span><span class="p">)</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;results: </span><span class="si">#{</span><span class="n">results</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC245'><br/></div><div class='line' id='LC246'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">results</span><span class="o">.</span><span class="n">length</span> <span class="o">!=</span> <span class="mi">1</span></div><div class='line' id='LC247'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;couldn&#39;t find a definition for </span><span class="si">#{</span><span class="n">what</span><span class="si">}</span><span class="s2"> on Google&quot;</span></div><div class='line' id='LC248'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC249'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC250'><br/></div><div class='line' id='LC251'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">gdef_link</span> <span class="o">=</span> <span class="s2">&quot;http://www.google.com&quot;</span> <span class="o">+</span> <span class="no">CGI</span><span class="o">.</span><span class="n">unescapeHTML</span><span class="p">(</span><span class="n">results</span><span class="o">[</span><span class="mi">0</span><span class="o">][</span><span class="mi">2</span><span class="o">]</span><span class="p">)</span> <span class="c1"># could be used to extract all defs</span></div><div class='line' id='LC252'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">head</span> <span class="o">=</span> <span class="n">results</span><span class="o">[</span><span class="mi">0</span><span class="o">][</span><span class="mi">0</span><span class="o">].</span><span class="n">ircify_html</span></div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">text</span> <span class="o">=</span> <span class="n">results</span><span class="o">[</span><span class="mi">0</span><span class="o">][</span><span class="mi">1</span><span class="o">].</span><span class="n">ircify_html</span></div><div class='line' id='LC254'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">head</span><span class="si">}</span><span class="s2"> -- </span><span class="si">#{</span><span class="n">text</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC255'><br/></div><div class='line' id='LC256'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">### gdef_link could be used for something like</span></div><div class='line' id='LC257'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># html_defs = @bot.httputil.get(gdef_link)</span></div><div class='line' id='LC258'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># related_index = html_defs.index(/Related phrases:/, 0)</span></div><div class='line' id='LC259'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># defs_index = html_defs.index(/Definitions of &lt;b&gt;/, related_index)</span></div><div class='line' id='LC260'><br/></div><div class='line' id='LC261'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># related = html_defs[related_index..defs_index]</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># defs = html_defs[defs_index..-1]</span></div><div class='line' id='LC263'><br/></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1"># m.reply defs.gsub(&#39;  &lt;br/&gt;&#39;,&#39;&lt;li&gt;&#39;).ircify_html</span></div><div class='line' id='LC265'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC266'><br/></div><div class='line' id='LC267'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">wikipedia</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">lang</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:lang</span><span class="o">]</span></div><div class='line' id='LC269'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">site</span> <span class="o">=</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">lang</span><span class="o">.</span><span class="n">nil?</span> <span class="p">?</span> <span class="s1">&#39;&#39;</span> <span class="p">:</span> <span class="n">lang</span> <span class="o">+</span> <span class="s1">&#39;.&#39;</span><span class="si">}</span><span class="s2">wikipedia.org&quot;</span></div><div class='line' id='LC270'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;Looking up things on </span><span class="si">#{</span><span class="n">site</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:site</span><span class="o">]</span> <span class="o">=</span> <span class="n">site</span></div><div class='line' id='LC272'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:filter</span><span class="o">]</span> <span class="o">=</span> <span class="sr">/ - Wikipedia.*$/</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:hits</span><span class="o">]</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;wikipedia.hits&#39;</span><span class="o">]</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:firstpar</span><span class="o">]</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;wikipedia.first_par&#39;</span><span class="o">]</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">google</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC276'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC277'><br/></div><div class='line' id='LC278'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">unpedia</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC279'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">site</span> <span class="o">=</span> <span class="s2">&quot;uncyclopedia.org&quot;</span></div><div class='line' id='LC280'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;Looking up things on </span><span class="si">#{</span><span class="n">site</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC281'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:site</span><span class="o">]</span> <span class="o">=</span> <span class="n">site</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:filter</span><span class="o">]</span> <span class="o">=</span> <span class="sr">/ - Uncyclopedia.*$/</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:hits</span><span class="o">]</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;wikipedia.hits&#39;</span><span class="o">]</span></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">params</span><span class="o">[</span><span class="ss">:firstpar</span><span class="o">]</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">config</span><span class="o">[</span><span class="s1">&#39;wikipedia.first_par&#39;</span><span class="o">]</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="n">google</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC286'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC287'><br/></div><div class='line' id='LC288'>&nbsp;&nbsp;<span class="k">def</span> <span class="nf">gtime</span><span class="p">(</span><span class="n">m</span><span class="p">,</span> <span class="n">params</span><span class="p">)</span></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">where</span> <span class="o">=</span> <span class="n">params</span><span class="o">[</span><span class="ss">:words</span><span class="o">].</span><span class="n">to_s</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">where</span><span class="o">.</span><span class="n">sub!</span><span class="p">(</span><span class="sr">/^\s*in\s*/</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">)</span></div><div class='line' id='LC291'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">searchfor</span> <span class="o">=</span> <span class="no">CGI</span><span class="o">.</span><span class="n">escape</span><span class="p">(</span><span class="s2">&quot;time in &quot;</span> <span class="o">+</span> <span class="n">where</span><span class="p">)</span></div><div class='line' id='LC292'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">url</span> <span class="o">=</span> <span class="no">GOOGLE_SEARCH</span> <span class="o">+</span> <span class="n">searchfor</span></div><div class='line' id='LC293'><br/></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">begin</span></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">html</span> <span class="o">=</span> <span class="vi">@bot</span><span class="o">.</span><span class="n">httputil</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">url</span><span class="p">)</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">rescue</span> <span class="o">=&gt;</span> <span class="n">e</span></div><div class='line' id='LC297'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;Error googletiming </span><span class="si">#{</span><span class="n">where</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC298'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC300'><br/></div><div class='line' id='LC301'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="n">html</span></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">results</span> <span class="o">=</span> <span class="n">html</span><span class="o">.</span><span class="n">scan</span><span class="p">(</span><span class="no">GOOGLE_TIME_RESULT</span><span class="p">)</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">debug</span> <span class="s2">&quot;results: </span><span class="si">#{</span><span class="n">results</span><span class="o">.</span><span class="n">inspect</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC304'><br/></div><div class='line' id='LC305'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="n">results</span><span class="o">.</span><span class="n">length</span> <span class="o">!=</span> <span class="mi">1</span></div><div class='line' id='LC306'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;Couldn&#39;t find the time for </span><span class="si">#{</span><span class="n">where</span><span class="si">}</span><span class="s2"> on Google&quot;</span></div><div class='line' id='LC307'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span></div><div class='line' id='LC308'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC309'><br/></div><div class='line' id='LC310'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">time</span> <span class="o">=</span> <span class="n">results</span><span class="o">[</span><span class="mi">0</span><span class="o">][</span><span class="mi">0</span><span class="o">].</span><span class="n">ircify_html</span></div><div class='line' id='LC311'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="n">m</span><span class="o">.</span><span class="n">reply</span> <span class="s2">&quot;</span><span class="si">#{</span><span class="n">time</span><span class="si">}</span><span class="s2">&quot;</span></div><div class='line' id='LC312'>&nbsp;&nbsp;<span class="k">end</span></div><div class='line' id='LC313'><span class="k">end</span></div><div class='line' id='LC314'><br/></div><div class='line' id='LC315'><span class="n">plugin</span> <span class="o">=</span> <span class="no">SearchPlugin</span><span class="o">.</span><span class="n">new</span></div><div class='line' id='LC316'><br/></div><div class='line' id='LC317'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;search *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;google&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC318'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;google *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;google&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC319'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;lucky *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;lucky&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC320'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;gcount *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;gcount&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC321'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;gcalc *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;gcalc&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC322'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;gdef *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;gdef&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC323'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;gtime *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;gtime&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC324'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;wp :lang *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;wikipedia&#39;</span><span class="p">,</span> <span class="ss">:requirements</span> <span class="o">=&gt;</span> <span class="p">{</span> <span class="ss">:lang</span> <span class="o">=&gt;</span> <span class="sr">/^\w\w\w?$/</span> <span class="p">},</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC325'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;wp *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;wikipedia&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC326'><span class="n">plugin</span><span class="o">.</span><span class="n">map</span> <span class="s2">&quot;unpedia *words&quot;</span><span class="p">,</span> <span class="ss">:action</span> <span class="o">=&gt;</span> <span class="s1">&#39;unpedia&#39;</span><span class="p">,</span> <span class="ss">:threaded</span> <span class="o">=&gt;</span> <span class="kp">true</span></div><div class='line' id='LC327'><br/></div><div class='line' id='LC328'><br/></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>
      </div>
    </div>

  </div>

<div class="frame frame-loading" style="display:none;" data-tree-list-url="/jsn/rbot/tree-list/b102d281d8bb7fb28f8b31fec983d56452edbd24" data-blob-url-prefix="/jsn/rbot/blob/b102d281d8bb7fb28f8b31fec983d56452edbd24">
  <img src="https://a248.e.akamai.net/assets.github.com/images/modules/ajax/big_spinner_336699.gif" height="32" width="32">
</div>

    </div>

    </div>

    <!-- footer -->
    <div id="footer" >
      
  <div class="upper_footer">
     <div class="site" class="clearfix">

       <!--[if IE]><h4 id="blacktocat_ie">GitHub Links</h4><![endif]-->
       <![if !IE]><h4 id="blacktocat">GitHub Links</h4><![endif]>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="https://github.com/training">Training</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://mobile.github.com/">Issues for iPhone</a></li>
         <li><a href="https://gist.github.com">Gist: Code Snippets</a></li>
         <li><a href="http://fi.github.com/">Enterprise Install</a></li>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Extras</h4>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="site" class="clearfix">
    <!--[if IE]><div id="legal_ie"><![endif]-->
    <![if !IE]><div id="legal"><![endif]>
      <ul>
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2011 <span id="_rrt" title="0.06096s from fe6.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

      <div class="sponsor">
        <a href="http://www.rackspace.com" class="logo">
          <img alt="Dedicated Server" height="36" src="https://a248.e.akamai.net/assets.github.com/images/modules/footer/rackspace_logo.png?v2" width="38" />
        </a>
        Powered by the <a href="http://www.rackspace.com ">Dedicated
        Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
        Computing</a> of Rackspace Hosting<span>&reg;</span>
      </div>
  </div><!-- /.site -->
</div><!-- /.lower_footer -->

    </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style='display:none'>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last" style='display:none'>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selected down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selected up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selected down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selected up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle select target</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column middle">
        <dl class="keyboard-mappings">
          <dt>I</dt>
          <dd>Mark selected as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>U</dt>
          <dd>Mark selected as unread</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>e</dt>
          <dd>Close selected</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Remove selected from view</dd>
        </dl>
      </div><!-- /.column.middle -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selected down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selected up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div style='display:none'>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>
</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:
> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>

    <div class="context-overlay"></div>

    
    
    
  </body>
</html>

