// @ts-nocheck
import axios from 'axios';
import { RMCALC_EXPRESS_URL } from '$env/static/private';

/** @type {import('./$types').RequestHandler} */
export async function POST(req) {
    // page request promise
    const promise = req.request.json();
    // page request paramater
    const bodyParams = await promise.then(r => {return r;});
    const apiData = await axios.post(`${RMCALC_EXPRESS_URL}/api/calc`, bodyParams)
    return new Response(JSON.stringify(apiData.data));
    // let apiData;
    // await axios.post(`${RMCALC_EXPRESS_URL}/api/calc`, bodyParams)
    // .then(r => {
    //     apiData = r.data;
    // })
    // .catch(e => {
    //     if (e.code === 'ERR_BAD_REQUEST') {error(404, 'Incorrect Backend API URL');}
    //     if (e.code === 'ECONNREFUSED') {error(404, 'Backend API terminated');}
    // })
    // return new Response(JSON.stringify(apiData));
}