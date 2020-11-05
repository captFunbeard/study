<#import "parts/common.ftlh" as c>
<#import "parts/product.ftlh" as pr>
<@c.page>
    <h5>Нюхай перду грязный гусь</h5>
    <div>мне нехуй делать прост вот я и пишу эту дрочь
        <div class="productList">
            <#list miniProd as prod>
                <div class="card" style="width: 15rem;height: 18rem;display: inline-block;vertical-align: top;padding: 10px;
   margin: 5px;">
                    <input type="hidden" name="filter" value="${filter!""}">
                    <div style="display: block;
    margin-left: auto;
    margin-right: auto">
                        <#if prod.filename??>
                        <a href="/prodPage?filter=${prod.tag}"><img width="200px" height="200px" src="/img/${prod.filename}"></a>
                        </#if>
                    </div>
                    <div style="vertical-align:bottom; margin-left: auto;
    margin-right: auto" class="card-body">
                        <a href="/prodPage?filter=${prod.tag}"><h5 class="card-title">${prod.tag}</h5></a>
                    </div>
                </div>
            <#else>
                No message
            </#list>
        </div>
    </div>
</@c.page>
