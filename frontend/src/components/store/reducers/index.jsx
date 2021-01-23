import { combineReducers } from 'redux';

import cart from './cart';
import products from './products';
import login from './login';


export default combineReducers({
    cart,
    products,
    login,
});
