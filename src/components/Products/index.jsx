import React from 'react';
import ProductsList from './ProductsList';
import SelectItems from './Select';

export default class Products extends React.Component {
    render(){
        return(
            <>
                <main className="container row m-auto">
                    <div className="col-sm-12 col-lg-3 mt-1">
                        <div className="dropdown mt-1">
                            <button className="col-sm-12 btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categorias
                            </button>
                            <SelectItems/>
                            <div className="dropdown-menu col-sm-12" aria-labelledby="dropdownMenu2">
                                <ul className="list-group">
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        type="button" onclick="allCategories()">
                                        Todas as categorias
                                        <span className="badge badge-success badge-pill">12</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        type="button" onclick="showCategories('nacional')">
                                        Clubes brasileiros
                                        <span class="badge badge-success badge-pill">3</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        type="button" onclick="showCategories('europeu')">
                                        Clubes europeus<span class="badge badge-success badge-pill">3</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        type="button" onclick="showCategories('historica')">
                                        Camisas históricas<span class="badge badge-success badge-pill">2</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        type="button" onclick="showCategories('selecao')">
                                        Seleções nacionais<span class="badge badge-success badge-pill">2</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        type="button" onclick="showCategories('casual')">
                                        Casuais<span class="badge badge-success badge-pill">2</span>
                                    </button>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div className="col-lg-9 mt-1">
                        <div class="row">
                            <ProductsList/>
                        </div>
                    </div>
                </main>    
            </>
        );
    }
}