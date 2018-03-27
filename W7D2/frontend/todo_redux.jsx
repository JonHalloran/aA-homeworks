import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";

import Root from "./components/root";

document.addEventListener("DOMContentLoaded", () => {
  const preloadedState = localStorage.state
    ? JSON.parse(localStorage.state)
    : {};
  let store = configureStore(preloadedState);
  // store = applyMiddlewares(store, [addLoggerToDispatch]);
  const root = document.getElementById("content");
  ReactDOM.render(<Root store={store} />, root);
});

// const addLoggerToDispatch = function(store) {
//   const OrigDispatch = store.dispatch;
//   return next => action => {
//     console.log(store.getState());
//     console.log(action);
//     OrigDispatch(action);
//     console.log(store.getState());
//   };
// };
//
// const applyMiddlewares = function(store, listOfMiddle) {
//   let dispatch = store.dispatch;
//   listOfMiddle.forEach(mid => {
//     dispatch = mid(store)(dispatch);
//   });
//   return Object.assign({}, store, { dispatch });
// };
