const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, {type, city, jobs}) => {
  switch(type) {
    case ("SWITCH_LOCATION"):
      return { 
        city,
        jobs
      }
    default: 
      return state;
  }
};

export default reducer;
