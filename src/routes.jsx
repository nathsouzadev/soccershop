import React from 'react';
import { Routes, Route } from 'react-router-dom';
import HomePage from './Views/index';
import Products from './Views/produtos';
import Stores from './Views/nossaslojas';
import ContactPage from './Views/contato';
import NotFound from './Views/notfound'

export default function MainRoutes(){
    return (
        <Routes>
            <Route path="/" element={<HomePage/>}/>
            <Route path="/produtos" element={<Products/>}/>
            <Route path="/nossaslojas" element={<Stores/>}/>
            <Route path="/Contato" element={<ContactPage/>}/>
            <Route path="*" element={<NotFound/>}/>
        </Routes>
    );
}