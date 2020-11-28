import React from 'react';

export default class SelectItems extends React.Component {
    render() {
        return (
            <>
                <div className="dropdown-menu col-sm-12" aria-labelledby="dropdownMenu2">
                    <ul class="list-group">
                        <li>Todas as categorias</li>
                        <li>Nacionais</li>
                    </ul>
                </div>
            </>
        );
    }
}
