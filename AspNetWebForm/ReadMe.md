# Asp .Net Webform 介接CAS SSO sample專案

此專案目的在於介紹如何介接CAS SSO服務到Webform網站。

會使用[. Net CAS client](https://wiki.jasig.org/display/CASC/.Net+Cas+Client)
作為驗證的library - 這個library使用httpModule的方式和FomsAuthentication來達到驗證

## 如何在Webform網站使用.Net CAS Client library

1. 使用nuget安裝 `DotNetCasClient`  
`Install-Package DotNetCasClient`  
2. 設定`web.config`裡面的`casClientConfig`，其中幾個選項說明如下:  

  |key|說明|範例|
  |----|---|---|
  |casServerLoginUrl|設定SSO登入畫面的網址|http://sso.ttsev.idv.tw:8080/login
  |casServerUrlPrefix|CAS 服務的根網址|http://sso.ttsev.idv.tw:8080/
  |serverName|系統所在位置。|http://webformcas.azurewebsites.net/
  |redirectAfterValidation|登入完是否導回系統|true或者false
  |singleSignOut|是否支援單一登出|true或false
  |ticketValidatorName|cas ticket的版本|總共有值：`Cas10`, `Cas20`, 和 `Saml11` - 一般使用`Cas20`
  |serviceTicketManager|使用單一登出要提供|CacheServiceTicketManager
3. 把要驗證才能夠使用的網站透過`web.config`裡面把要驗證的path輸入，舉例來說：  
```xml
  <location path="Secrete.aspx">
    <system.web>
      <authorization>
        <deny users="?"/>
      </authorization>
    </system.web>
  </location>
```
意思是Secrete.aspx需要登入才能夠看到  
4. 嘗試瀏覽到Secrete.aspx就會被導向SSO登入網站(config 裡面的`casServerLoginUrl`設定位置)

## 直接測試網站

可以再 [http://mvccas.azurewebsites.net](http://mvccas.azurewebsites.net) 看到此專案發佈到Azure的樣子。

測試方式如下：

1. 當點選menu裡面的 Secrete連接，將會被導向SSO登入畫面。
2. 登入成功之後，會被倒回來網站，然後每一頁都會顯示目前登入者的帳號，並且一個登出的連接用來登出系統

## 其他資訊

1. 官方Wiki介紹此library: [https://wiki.jasig.org/display/CASC/.Net+Cas+Client](https://wiki.jasig.org/display/CASC/.Net+Cas+Client)
