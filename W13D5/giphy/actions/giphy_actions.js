import * as APIUtil from '../util/api_util';
export const RECEIVE_SEARCH_GIPHYS = 'RECEIVE_SEARCH_GIPHYS';
export const REQUEST_SEARCH_GIPHYS = 'REQUEST_SEARCH_GIPHYS';

export const receiveSearchGiphys = giphys => {
  debugger;
  return {
    type: RECEIVE_SEARCH_GIPHYS,
    giphys
  }
};

export const fetchSearchGiphys = (searchTerm) => {
  return (dispatch) => {
    debugger
    let result = APIUtil.fetchSearchGiphys(searchTerm)
    debugger
    result.then(giphys => dispatch(receiveSearchGiphys(giphys.data)))
  }
}