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
}