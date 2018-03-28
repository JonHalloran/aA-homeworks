import * as APIUtil from "../util/api_util";

export const receiveSearchGiphys = giphys => {
  return {
    type: RECEIVE_SEARCH_GIPHYS,
    giphys
  };
};

export const fetchSearchGiphys = searchTerm => {
  return dispatch =>
    APIUtil.fetchSearchGiphys(searchTerm).then(res => {
      dispatch(receiveSearchGiphys(res));
    });
};

export const RECEIVE_SEARCH_GIPHYS = "RECEIVE_SEARCH_GIPHYS";
