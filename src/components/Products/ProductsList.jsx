import React, { useState, useEffect } from 'react';

const ProductsList = () => {
    const [prods, setProds] = useState([]);

    useEffect(async() => {
        const url = "http://localhost/soccershop/backend/apisoccer.php?table=produtos";
        const res = await fetch(url);
        setProds(await res.json());
    }, [])

     
    function enterPointer(event) {
        const img = event.target
        img.className = "rounded-circle rounded-lg border border-success";
    }

    function outPointer(event) {
        const img = event.target
        img.className = "card-img-top img-thumbnail";
    }

    return (
        <>  
            { prods.map(row =>{
                return (
                    <div key={row.id_prod} className="card col-sm-12 col-md-6 col-lg-3 border-light box-item" id={row.categoria}>
                        <img src={row.imagem} className="card-img-top img-thumbnail" alt={row.descricao} onMouseEnter={enterPointer} onMouseLeave={outPointer} />
                        <div className="card-body">
                            <h5 className="card-title">{row.descricao}</h5>
                            {/*<p className="card-text text-danger"><strike>R$ {row.preco}</strike></p>*/}
                            <p className="card-text">R$ {row.preco_venda}</p>
                        </div>
                    </div>
                    )
                })
            }
        </>
    )
}

export default ProductsList;
