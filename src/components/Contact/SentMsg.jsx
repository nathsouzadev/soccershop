import React from 'react';

export const Msg = () => {
    
    return(
        <>
            <div className="row justify-content-center mt-1">
                <h2>Fale conosco</h2>
                <form method="post" className="col-12">
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
        </>
    );
}
