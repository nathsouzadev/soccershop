import React, { useState, useEffect } from 'react';

const MsgList = () => {
    const [msg, setMsg] = useState([]);

    useEffect(async() => {
        const url = "http://localhost/soccershop/backend/apisoccer.php?table=comentarios";
        const res = await fetch(url);
        setMsg(await res.json());
    }, [])


    return(
        <>
            {   msg.map(row =>{
                return(
                    <div key={row.id_coment} className="card msg">
                        <div className="card-body">
                            <h5 className="card-title">{row.nome}</h5>
                            <p className="card-text">{row.msg}</p>
                            <p className="card-text"><small class="text-muted">{row.data}</small></p>
                        </div>
                    </div>
                    )
                })
            }
        </>
    )
}

export default MsgList;