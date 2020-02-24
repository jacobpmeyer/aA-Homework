export const fetchSearchGiphys = (searchTerm) => {
  debugger;
  let result = $.ajax({
    method: "GET",
    url: `http://api.giphy.com/v1/gifs/search?q=${searchTerm}&api_key=kFPEiJd52pDLFdrxrECpB8IMLR8M8xlz&limit=5`
  })
  debugger;
  return result
}