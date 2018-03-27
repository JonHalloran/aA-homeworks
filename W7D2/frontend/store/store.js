import { createStore } from "redux";
import rootReducer from "../reducers/root_reducer";
import { applyMiddleware } from "redux";

const configureStore = (preloadedState = {}) => {
  console.log(store);
  const store = createStore(
    rootReducer,
    preloadedState,
    applyMiddleware(addLoggerToDispatch)
  );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
};

const addLoggerToDispatch = store => {
  const OrigDispatch = store.dispatch;
  return next => action => {
    console.log(store.getState());
    console.log(action);
    // OrigDispatch(action);
    console.log(store.getState());
  };
};

export default configureStore;
