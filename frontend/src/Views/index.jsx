import { useDispatch } from 'react-redux';
import loginActions from '../components/store/actions/login';

const HomePage = () => {
        
        const dispatch = useDispatch();

        return (
            <main className="container-fluid mt-1">
                <div className="jumbotron card card-image principal text-right">
                    <h1 className="display text-light">SoccerShopp</h1>
                    <p className="lead text-light">Programadores tem descontos para torcer pelo seu time de coração</p>
                    <div class="modal-footer">
                        <button onClick={()=>dispatch(loginActions.Login())} type="submit" class="btn btn-primary">Login</button>
                    </div>
                </div>
            </main>
        );
}

export default HomePage;
