import React from 'react';

export default class ProductsList extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = ({
            data: []
        });
        this.showProducts();
    }

    showProducts() {
        fetch('http://localhost/soccershop/src/backend/apisoccer.php?table=produtos')
        .then((res) => res.json())
        .then((resJson) => {
            this.setState({ data: resJson});
        })
    }

    render() {
        return(
            <ShowProducts array={this.state.data}/>
        );
    }
}

class ShowProducts extends React.Component {
    render() {
        return(
            <>
            {this.props.array.map(
                row=>
                <div className="card col-sm-12 col-md-6 col-lg-3 border-light box-item" id={row.id_prod}>
                    <img src={row.imagem} className="card-img-top img-thumbnail" alt={row.descricao} />
                    <div class="card-body">
                        <h5 className="card-title">{row.descricao}</h5>
                        <p className="card-text text-danger"><strike>R$ {row.preco}</strike></p>
                        <p className="card-text">R$ {row.preco_venda}</p>
                    </div>
                </div>
            )}
            </>
        );
    }
}
