import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import { Provider } from 'react-redux';
import store from './store/store';


const root = ReactDOM.createRoot(document.getElementById('root') as HTMLElement);
root.render(
  <Provider store={store}>
    <App />
  </Provider>
)

window.addEventListener('unhandledrejection', event => {
  console.error(`Ошибка в промисе - ${event.reason}`)
})

window.onerror = (msg, source, line, col, error) => {
  console.error('Ошибка в скрипте: ', { msg, source, line, col, error })
}
