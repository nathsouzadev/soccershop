import React, { lazy, Suspense } from 'react';
import ProductsList from '../components/Products/ProductsList';
const SelectItems = lazy(() => import('../components/Products/Select'));

const ProductsPage = () =>{
        return (
            <>
                <main className="container row m-auto">
                    <div className="col-sm-12 col-lg-3 mt-1">
                        <div className="dropdown mt-1">
                            <button className="col-sm-12 btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categorias
                            </button>
                            <div className="dropdown-menu col-sm-12" aria-labelledby="dropdownMenu2">
                                <ul className="list-group">
                                    <SelectItems/>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div className="col-lg-9 mt-1">
                        <div className="row">
                            <Suspense fallback={
                                <div className="spinner-border text-success" role="status">
                                    <span className="sr-only">Loading...</span>
                                </div>
                            }>
                                <ProductsList/>
                            </Suspense>
                        </div>
                    </div>
                </main>  
                
               
            </>
        );
}

export default ProductsPage;
