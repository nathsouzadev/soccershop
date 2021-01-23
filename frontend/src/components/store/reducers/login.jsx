const INITIAL_STATE = {
    value: false,
}

export default function login(state = INITIAL_STATE, action){
    switch(action.type){
        case 'LOGIN':
            console.log(state.value);
            return {...state, value: true}
        case 'LOGOUT':
            console.log(state.value);
            return {...state, value: false}
        default:
            return state    
    }
       
}
