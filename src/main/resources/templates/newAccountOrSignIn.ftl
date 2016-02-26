<#import "layout.ftl" as layout>
<#import "spring.ftl" as spring/>

<@layout.layout "Register">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="/">ホーム</a>
                        </li>
                        <li>新規アカウント / サインイン</li>
                    </ul>

                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>新規アカウント</h1>



                        <form action="/register" method="post">
                            <@spring.bind "accountRegisterForm.name"/>
                            <#assign error><#if spring.status.error> has-error</#if></#assign>

                            <div class="form-group${error}">
                                <label for="name">名前</label>
                                <input type="text" class="form-control" id="name" name="name" value="${spring.stringStatusValue}">
                                <@spring.showErrors "<br/>", "help-block"/>
                            </div>

                            <@spring.bind "accountRegisterForm.email"/>
                            <#assign error><#if spring.status.error> has-error</#if></#assign>

                            <div class="form-group${error}">
                                <label for="email">メールアドレス</label>
                                <input type="text" class="form-control" id="email" name="email" value="${spring.stringStatusValue}">
                                <@spring.showErrors "<br/>", "help-block"/>
                            </div>

                            <@spring.bind "accountRegisterForm.password"/>
                            <#assign error><#if spring.status.error> has-error</#if></#assign>

                            <div class="form-group${error}">

                                <label for="password">パスワード</label>
                                <input type="password" class="form-control" id="password" name="password" value="${spring.stringStatusValue}">
                                <@spring.showErrors "<br/>", "help-block"/>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Register</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box">
                        <h1>ログイン</h1>

                        <form action="/login" method="post">
                            <div class="form-group">
                                <label for="name">アカウント</label>
                                <input type="text" name="account" class="form-control" id="account">
                            </div>
                            <div class="form-group">
                                <label for="password">パスワード</label>
                                <input type="password" name="password" class="form-control" id="password">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


</@layout.layout>
