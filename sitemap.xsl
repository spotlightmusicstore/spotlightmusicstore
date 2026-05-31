<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes"
    doctype-system="about:legacy-compat"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="robots" content="noindex, follow"/>
        <title>SpotlightMusicStore — XML Sitemap</title>
        <style>
          *{box-sizing:border-box;margin:0;padding:0}
          body{
            background:#080808;color:#f5f3ef;
            font-family:'Barlow Condensed','Arial Narrow',Arial,sans-serif;
            font-weight:400;letter-spacing:.01em;padding:0;
            -webkit-font-smoothing:antialiased;
          }
          .wrap{max-width:1100px;margin:0 auto;padding:3rem 1.5rem 4rem}
          .head{border-bottom:1px solid rgba(255,255,255,.1);padding-bottom:2rem;margin-bottom:2rem}
          .eyebrow{
            font-family:'Courier New',monospace;font-size:11px;letter-spacing:.22em;
            text-transform:uppercase;color:#2dd4bf;margin-bottom:1rem;
          }
          h1{
            font-family:Georgia,'Times New Roman',serif;font-weight:300;
            font-size:clamp(32px,5vw,48px);line-height:1.1;letter-spacing:-.01em;color:#f5f3ef;
          }
          h1 em{font-style:italic;color:#a78bfa}
          .meta{
            margin-top:1.2rem;font-size:15px;font-weight:300;line-height:1.7;
            color:rgba(245,243,239,.62);max-width:640px;
          }
          .count{
            display:inline-block;font-family:'Courier New',monospace;font-size:13px;
            color:#2dd4bf;border:1px solid rgba(45,212,191,.3);padding:4px 12px;margin-top:1.2rem;
          }
          table{width:100%;border-collapse:collapse;font-size:14px}
          thead th{
            text-align:left;font-family:'Courier New',monospace;font-size:11px;font-weight:400;
            letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.62);
            padding:0 1rem 1rem;border-bottom:1px solid rgba(255,255,255,.12);
          }
          tbody td{
            padding:.9rem 1rem;border-bottom:1px solid rgba(255,255,255,.06);
            font-weight:300;color:rgba(245,243,239,.82);vertical-align:middle;
          }
          tbody tr:hover{background:rgba(255,255,255,.02)}
          td a{color:#f5f3ef;text-decoration:none;transition:color .2s}
          td a:hover{color:#2dd4bf}
          .num{
            font-family:'Courier New',monospace;font-size:11px;
            color:rgba(245,243,239,.32);width:48px;
          }
          .pri{font-family:'Courier New',monospace;font-size:13px;width:90px}
          .freq,.mod{
            font-family:'Courier New',monospace;font-size:12px;
            color:rgba(245,243,239,.62);text-transform:capitalize;
          }
          .bar{
            display:inline-block;height:4px;background:#2dd4bf;border-radius:2px;
            vertical-align:middle;margin-right:8px;opacity:.8;
          }
          .foot{
            margin-top:2.5rem;padding-top:2rem;border-top:1px solid rgba(255,255,255,.1);
            font-family:'Courier New',monospace;font-size:11px;letter-spacing:.08em;
            color:rgba(245,243,239,.52);
          }
          .foot a{color:#2dd4bf;text-decoration:none}
          @media(max-width:640px){
            .freq,.mod,.num{display:none}
            thead .freq,thead .mod,thead .num{display:none}
          }
        </style>
      </head>
      <body>
        <div class="wrap">
          <div class="head">
            <div class="eyebrow">XML Sitemap</div>
            <h1>Spotlight<em>MusicStore</em></h1>
            <p class="meta">
              This XML sitemap is generated for search engines such as Google and Bing.
              It lists every indexable page across music, gaming audio, streaming, creator economy,
              and esports coverage. It is not intended for human visitors — but here is a readable view.
            </p>
            <span class="count">
              <xsl:value-of select="count(s:urlset/s:url)"/> URLs
            </span>
          </div>

          <table>
            <thead>
              <tr>
                <th class="num">#</th>
                <th>URL</th>
                <th class="pri">Priority</th>
                <th class="freq">Frequency</th>
                <th class="mod">Last Modified</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="s:urlset/s:url">
                <tr>
                  <td class="num"><xsl:number value="position()" format="01"/></td>
                  <td>
                    <a href="{s:loc}">
                      <xsl:value-of select="s:loc"/>
                    </a>
                  </td>
                  <td class="pri">
                    <span class="bar">
                      <xsl:attribute name="style">
                        width:<xsl:value-of select="number(s:priority) * 40"/>px;
                      </xsl:attribute>
                    </span>
                    <xsl:value-of select="s:priority"/>
                  </td>
                  <td class="freq"><xsl:value-of select="s:changefreq"/></td>
                  <td class="mod"><xsl:value-of select="s:lastmod"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>

          <div class="foot">
            Generated for <a href="https://spotlightmusicstore.com/">spotlightmusicstore.com</a>
            &#160;·&#160; Submit via Google Search Console &#8594; Sitemaps
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
