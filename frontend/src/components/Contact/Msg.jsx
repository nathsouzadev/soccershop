import React, { useState, useEffect, lazy, Suspense } from 'react';
import sent from '../../assets/sent.svg';
const MsgCard = lazy(() => import('./MsgCard'))

const SentMsg = () => {
    
    const [msg, setMsg] = useState([]);
    const [render, setRender] = useState(false);
    const [alert, setAlert] = useState(false);
    const [error, setError] = useState(false);
    const [name, setName] = useState('');
    const [message, setMessage] = useState('');

    useEffect(async () => {
        const url = "http://localhost:5000/comment";
        const res = await fetch(url);
        setMsg(await res.json());
    }, [render])
    
    function newMsg(event) {
        event.preventDefault();
        let form = {author: name,
                    message: message};
        const url = "http://localhost:5000/comment";
        fetch(url, { 
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(form)
        }).then((res) => res.json()).then((data) => {
            if(data.error){
                setError(data.error)

                setTimeout(() => {
                    setError(false);
                }, 2000)

                return;
            }
            setRender(!render);
            setAlert(data)

            setTimeout(() => {
                setAlert(false);
            }, 2000)
        })

        setName('');
        setMessage('');
        
    }
    
    return(
        <>
            <div className="row justify-content-center mt-1">
                <h2 className="text-light">Fale conosco</h2>
                <form className="col-12" onSubmit={newMsg}>
                    <div className="form-group">
                        <label className="text-light">Nome</label>
                            <input type="text" className="form-control" id="nome" name="name" placeholder="Digite seu nome" value={name} onChange={event=>setName(event.target.value)}/>
                                
                    </div>
                    <div className="form-group">
                        <label className="text-light">Mensagem</label>  
                            <textarea className="form-control" id="msg" rows="3" name="msg" placeholder="Digite sua mensagem" value={message} onChange={event=>setMessage(event.target.value)}/>
                                
                    </div>
                    <button className="btn btn-primary col-xl-12"><img src={sent}/> Enviar</button>
                </form>

                { alert && <div className="alert alert-success alert-dismissible fade show" role="alert">
                            Mensagem enviada!
                            <button type="button" className="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div> }
                { error && <div className="alert alert-danger alert-dismissible fade show" role="alert">
                    Erro ao enviar mensagem!
                    <button type="button" className="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div> }
            </div>
            <Suspense fallback={
                            <div className="spinner-border text-success" role="status">
                                <span className="sr-only">Loading...</span>
                            </div>
                        }>
                <div className="mt-1">
                    {msg.map(row => {
                        return(
                            <span key={row._id}>
                                <MsgCard id={row._id} author={row.author} date={row.date}>{row.message}</MsgCard>
                            </span> 
                        )
                    })}
                </div>
            </Suspense>
        </>
    )
}

export default SentMsg;
