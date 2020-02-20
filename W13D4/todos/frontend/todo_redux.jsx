import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
// import { addLoggingToDispatch } from './reducers/todos_reducer';

import Root from './components/root';

// const applyMiddlewares = (store, middlewares) => {
//   const dispatch = store.dispatch
//   middlewares.forEach((mid) => {
//     dispatch = mid(store)(dispatch)
//   })
//   return Object.assign({}, store, { dispatch })
// }

// export const addLoggingToDispatch = store => next => action => {
//   console.log(store.getState())
//   console.log(action)
//   next(action)
//   console.log(store.getState())
// }

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  // store = applyMiddlewares(store, [addLoggingToDispatch])
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
