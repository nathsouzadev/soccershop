import React from 'react';

export default class Home extends React.Component {
    render() {
        return (
            <>
                <main className="container-fluid mt-1">
                    <div className="jumbotron card card-image principal text-right">
                        <h1 className="display text-light">SoccerShopp</h1>
                        <p className="lead text-light">Programadores tem descontos para torcer pelo seu time de coração</p>
                    </div>
                </main>
            </>
        );
    }
}