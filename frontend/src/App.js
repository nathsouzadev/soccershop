import { BrowserRouter as Router } from 'react-router-dom';
import CssBaseline from '@material-ui/core/CssBaseline';
import { createMuiTheme, ThemeProvider } from '@material-ui/core/styles';
import { Container, Typography } from '@material-ui/core';
import { Provider } from 'react-redux';
import store from './components/store';
import Header from './components/Header/Header';
import Footer from './components/Footer';
import Routes from './routes';

const App = () => {
  
  const darkTheme = createMuiTheme({
    palette: {
      type: 'dark',
    },
  });
  
  return (
      <ThemeProvider theme={darkTheme}>
        <CssBaseline />
        <Container maxWidth="lg">
          <Typography component="h1" variant="h5">
          <h1>Hello world</h1>
          </Typography>
        </Container>
      </ThemeProvider>
  );
}

export default App;
