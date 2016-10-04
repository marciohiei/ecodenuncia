<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>
<!--
#section4{background-image:url(img/map-image.png);background-position:center;background-repeat:no-repeat}
#section4 .section-heading{color:#fff}
#section4 .form-group{margin-bottom:25px}
#section4 .form-group input,#section4 .form-group textarea{padding:20px}
#section4 .form-group input.form-control{height:auto}
#section4 .form-group textarea.form-control{height:236px}
#section4 .form-control:focus{border-color:#fed136;box-shadow:none}
#section4 ::-webkit-input-placeholder{font-family:Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;text-transform:uppercase;font-weight:700;color:#bbb}
#section4 :-moz-placeholder{font-family:Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;text-transform:uppercase;font-weight:700;color:#bbb}
#section4 ::-moz-placeholder{font-family:Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;text-transform:uppercase;font-weight:700;color:#bbb}
#section4 :-ms-input-placeholder{font-family:Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;text-transform:uppercase;font-weight:700;color:#bbb}
#section4 .text-danger{color:#e74c3c}footer{padding:25px 0;text-align:center}
footer{
    position: absolute;
    bottom: 0px;
    width: 100%;
    background-color: #fff;}
footer span.copyright{line-height:40px;font-family:Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;text-transform:uppercase;text-transform:none}
footer ul.quicklinks{margin-bottom:0;line-height:40px;font-family:Montserrat,"Helvetica Neue",Helvetica,Arial,sans-serif;text-transform:uppercase;text-transform:none}
ul.social-buttons{margin-bottom:0}
ul.social-buttons li a{display:block;background-color:#222;height:40px;width:40px;border-radius:100%;font-size:20px;line-height:40px;color:#fff;outline:0;-webkit-transition:all .3s;-moz-transition:all .3s;transition:all .3s}
ul.social-buttons li a:hover,ul.social-buttons li a:focus,ul.social-buttons li a:active{background-color:#fed136}
-->
</style>
<div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contate-nos</h2>
                    <h3 class="section-subheading text-muted">Projeto de conclusao de curso do aluno Marcio Vinicio Frederico</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Nome *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Telefone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Mensagem *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Enviar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
<footer >
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy;Projeto Eco-denúncia - 2015 </span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Política de Privacidade</a>
                        </li>
                        <li><a href="#">Termos de uso</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>