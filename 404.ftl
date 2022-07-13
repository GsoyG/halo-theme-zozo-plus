<#include "layouts/partials/head.ftl">
<@head title="未找到页面 · ${blog_title!}" canonical="${blog_url!}/404" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="page_tags">
            <h1>404</h1>
            <h2>-未找到页面-</h2>
            <h3><a href="${blog_url!}">回到首页</a></h3>
        </div>
        <div class="pagination"></div>
    </div>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>