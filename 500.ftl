<#include "layouts/partials/head.ftl">
<@head title="内部服务器错误 · ${blog_title!}" canonical="${blog_url!}/500" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="page_tags">
            <h1>500</h1>
            <h2>-内部服务器错误-</h2>
            <h3><a href="${blog_url!}">回到首页</a></h3>
        </div>
        <div class="pagination"></div>
    </div>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>