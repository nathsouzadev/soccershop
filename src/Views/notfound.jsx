import React from 'react';
import notfound from '../assets/error404_min.jpg';

export default class NotFound extends React.Component {
    render() {
        return (
        <img className="img-fluid" src={notfound}/>
        );
    }
}