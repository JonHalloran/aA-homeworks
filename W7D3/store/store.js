import { createStore, applyMiddleware } from "redux";
import thunk from "redux-thunk";
import rootReducer from "../reducers/root_reducer";

let initialState = {};

const configureStore = () => {
  return createStore(
    rootReducer,
    initialState,
    applyMiddleware(thunkMiddleware)
  );
};

const thunkMiddleware = ({ dispatch, getState }) => next => action => {
  if (typeof action === "function") {
    console.log("thunk");
    return action(dispatch);
  }
  return next(action);
};

export default configureStore;
