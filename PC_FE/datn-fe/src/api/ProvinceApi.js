import axios from 'axios'

export const getAllProvince = () =>{
    return axios.create({
        baseURL: "https://vapi.vnappmob.com/api",
        headers:{
            "Content-Type" : "application/json"
        }
    }).get("/province");
}


export const getAllDistrict = (provinceID) =>{
    return axios.create({
        baseURL: "https://vapi.vnappmob.com/api",
        headers:{
            "Content-Type" : "application/json"
        }
    }).get(`/province/district/${provinceID}`);
}


export const getAllWard = (districtID) =>{
    return axios.create({
        baseURL: "https://vapi.vnappmob.com/api",
        headers:{
            "Content-Type" : "application/json"
        }
    }).get(`/province/ward/${districtID}`);
}
