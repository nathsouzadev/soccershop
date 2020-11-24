import React, { useState } from 'react';
import MsgList from './MsgList';
import API from './APImsg';


export default class Contact extends React.Component {
    
    
    
    render(){     
        return (
            <>
                <main className="container mt-1">
                    <div className="row mx-auto">
                        <div className="col-sm-12 col-xl-6 mt-1">
                            <button type="button" className="btn btn-primary btn-lg btn-block">
                                <a className="text-light" href="mailto:contato@soccershop.com?subject:Contato via site" target="_blank">
                                    <img src="./images/mail.svg"/> contato@soccer.com
                                </a>
                            </button>
                        </div>

                        <div className="col-sm-12 col-xl-6 mt-1">
                            <button type="button" className="btn btn-primary btn-lg btn-block">
                                <a className="text-light" href="https://api.whatsapp.com/send?l=pt_BR&phone=05511999999999&text=Oi, quero informações sobre camisas do meu time" target="_blank" class="btn btn-primary col-sm-12">
                                    <img src="./images/phone.svg"/>
                                    (11) 99999-9999
                                </a>
                            </button>
                        </div>

                    </div>

                    <div className="row justify-content-center mt-1">
                        <h2>Fale conosco</h2>
                        <form className="col-12">
                            <div className="form-group">
                                <label for="nome">Nome</label>
                                <input type="text" className="form-control" id="nome" name="name" placeholder="Digite seu nome"/>
                            </div>
                            <div className="form-group">
                                <label for="msg">Mensagem</label>
                                <textarea className="form-control" id="msg" rows="3" name="msg" placeholder="Digite sua mensagem aqui"> </textarea>
                            </div>
                            <button className="btn btn-primary col-xl-12"><img src="./images/sent.svg"/> Enviar</button>
                        </form>
                    </div>

                    <div className="mt-1">
                        <MsgList/>
                    </div>
                </main>
            </>
        );
    }
}
