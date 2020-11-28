import React from 'react';
import ProductsList from './ProductsList';
import SelectItems from './Select';

const Products = () => {

    function showCategories(event) {
        let prod = document.getElementsByClassName('box-item');
        let item = event.target.id;
        for (let i = 0; i < prod.length; i++) {
            if (item == prod[i].id) {
                prod[i].style.display = "block";
            }
            else{
                prod[i].style.display = "none";
            }
        }
    }

    function allCategories() {
        let prod = document.getElementsByClassName('box-item')
        for (let i = 0; i < prod.length; i++) {
            prod[i].style.display = "block";
        }
    }

    return(
            <>
                <main className="container row m-auto">
                    <div className="col-sm-12 col-lg-3 mt-1">
                        <div className="dropdown mt-1">
                            <button className="col-sm-12 btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categorias
                            </button>
                            <div className="dropdown-menu col-sm-12" aria-labelledby="dropdownMenu2">
                                <ul className="list-group">
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        onClick={allCategories} type="button">
                                        Todas as categorias
                                        <span className="badge badge-success badge-pill">12</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        id="nacional" onClick={showCategories} type="button">
                                        Clubes brasileiros
                                        <span className="badge badge-success badge-pill">3</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        id="europeu" onClick={showCategories} type="button">
                                        Clubes europeus<span className="badge badge-success badge-pill">3</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        id="historica" onClick={showCategories} type="button">
                                        Camisas históricas<span className="badge badge-success badge-pill">2</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        id="selecao" onClick={showCategories} type="button">
                                        Seleções nacionais<span className="badge badge-success badge-pill">2</span>
                                    </button>
                                    <button className="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                                        id="casual" onClick={showCategories} type="button">
                                        Casuais<span className="badge badge-success badge-pill">2</span>
                                    </button>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div className="col-lg-9 mt-1">
                        <div className="row">
                            <ProductsList/>
                        </div>
                    </div>
                </main>  
                
               
            </>
        );
}

export default Products;