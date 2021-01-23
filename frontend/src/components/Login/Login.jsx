import { useDispatch } from 'react-redux';
import loginActios from '../store/actions/login';
import { useState } from 'react';
import Axios from 'axios';

const Login = () => {

    const dispatch = useDispatch();
    
    const [user, setUser] = useState ('')
    const [pass, setPass] = useState ('')

    /* const login = () => {
        Axios.post('http://localhost:5000/login', {
        user: user,
        password: pass,
        }).then((res) => {
        if(res.data.message){
            console.log(res.data.message);
            setUser('');
            setPass('');
        } else { 
            console.log(res.data[0].email);
            setUser('');
            setPass('');
        }
        });
    } */
    
    return(
        <>
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#loginModal">
            Faça o login
        </button>

        
        <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="#loginModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">Faça o login</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" value={user} onChange={(e)=>{setUser(e.target.value)}}/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" aria-describedby="passwordHelp" value={pass} onChange={(e)=>{setPass(e.target.value)}}/>
                        <small id="passwordHelp" class="form-text text-muted">A senha deve conter no mínimo oito caracteres</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button onClick={()=>dispatch(loginActios.Login())} type="submit" class="btn btn-primary">Login</button>
                </div>
                </div>
            </div>
        </div>
        </>
    )
}

export default Login;