<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>

        <#list prods as message>
            <div>
                <figure class="figure">
                    <#if message.filename??>
                    <img width="400px" height="400px" src="/img/${message.filename}" class="figure-img img-fluid rounded" alt="...">
                    </#if>
                    <figcaption class="figure-caption"></figcaption>
                </figure>
                <input type="hidden" name="filter" value="${filter!""}">
                <p class="h2">Описание</p>
                <span>${message.text}</span>
            </div>
        <#else>
            No message
        </#list>

        <p class="h2">Харки</p>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Handle</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>Larry</td>
                <td>the Bird</td>
                <td>@twitter</td>
            </tr>
            </tbody>
        </table>
    </div>
</@c.page>
