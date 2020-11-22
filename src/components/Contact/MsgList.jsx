import React from 'react';

export default class MsgList extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = ({
            data: []
        });
        this.showMsg();
    }

    showMsg() {
        fetch('http://localhost/soccershop/src/backend/apisoccer.php?table=comentarios')
        .then((res) => res.json())
        .then((resJson) => {
            this.setState({ data: resJson});
        })
    }

    render() {
        return(
            <ShowMsg array={this.state.data}/>
        );
    }
}

class ShowMsg extends React.Component {
    render() {
        return(
            <>
            {this.props.array.map(
                row=>
                <div className="card">
                    <div className="card-body">
                        <h5 className="card-title">{row.nome}</h5>
                        <p className="card-text">{row.msg}</p>
                        <p className="card-text"><small class="text-muted">{row.data}</small></p>
                    </div>
                </div>
            )}
            </>
        );
    }
}