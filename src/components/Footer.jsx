import React from 'react';
import payment from '../assets/payment.jpeg';

export default class Footer extends React.Component{
    render(){
        return(
            <>
                <div className="media mt-1">
                    <div className="media-body text-center">
                        <h5 className="mt-0">Formas de pagamento</h5>
                        <img src={payment} className="align-self-end img-fluid" alt="Formas de pagamento"/>
                        <p>&copy Nathally Souza</p>
                    </div>
                </div> 
            </>
        );
    }
}