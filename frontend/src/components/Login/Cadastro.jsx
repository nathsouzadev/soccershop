import { useState } from 'react';
import Axios from 'axios';

const Cadastro = () => {

    const [userLogin, setUserLogin] = useState ('')
    const [passLogin, setPassLogin] = useState ('')

    const register = () => {
        Axios.post('http://localhost:5000/register', {
        user: userLogin,
        password: passLogin,
        }).then((res) => console.log(res));
        setUserLogin('');
        setPassLogin('');
    }

    return(
        <>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#registerModal">
            Cadastre-se
        </button>

        
        <div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="registerModalLabel">Cadastre-se</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" class="form-control" value={userLogin} onChange={(e)=>{setUserLogin(e.target.value)}} id="exampleInputEmail1"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" value={passLogin} onChange={(e)=>{setPassLogin(e.target.value)}} aria-describedby="passwordHelp"/>
                        <small id="passwordHelp" class="form-text text-muted">A senha deve conter no mínimo oito caracteres</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button onClick={register} class="btn btn-primary">Submit</button>
                </div>
                </div>
            </div>
        </div>
        </>
    )
}

export default Cadastro;