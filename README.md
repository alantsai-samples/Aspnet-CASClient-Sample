# aspnet-CASClient-sample

此專案目的在於介紹如何透過 [.Net Client Library](https://wiki.jasig.org/display/CASC/.Net+Cas+Client) 介接CAS SSO服務到Webform 和 Mvc網站。

## Repo結構

1. [AspNetMvc](\AspNetMvc) - 放的是MVC版本的範例
2. [AspNetWebForm](\AspNetWebForm) - 放的是webform版本的範例

## 基本使用流程

要整合CAS client基本上安裝步奏是：

1. 透過nuget安裝.net cas client library - `Install-Package DotNetCasClient`
2. 設定web.config裡面的casClientConfig
3. 設定那些網址需要驗證才能夠使用
  這個和一般在webform和mvc網站設定限制可以使用那些服務的做法是一樣

其他詳細設定請在參考 [AspNetMvc](\AspNetMvc) 或 [AspNetWebForm](\AspNetWebForm)

## Sample測試網站

這兩個asp.net的sample有放到了azure方便直接看效果和測試，網址如下：

1. Mvc - [http://mvccas.azurewebsites.net/] (http://mvccas.azurewebsites.net/)
2. Webform - [http://webformcas.azurewebsites.net/](http://webformcas.azurewebsites.net/)

其他資訊：

1. 官方介紹 [https://wiki.jasig.org/display/CASC/.Net+Cas+Client](https://wiki.jasig.org/display/CASC/.Net+Cas+Client)
2. 官方介紹Mvc的部分[https://wiki.jasig.org/pages/viewpage.action?pageId=32210981](https://wiki.jasig.org/pages/viewpage.action?pageId=32210981) 
