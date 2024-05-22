// @ts-nocheck
import axios from 'axios';
import { RMCALC_EXPRESS_URL } from '$env/static/private';
import { error } from '@sveltejs/kit';

/** @type {import('./$types').RequestHandler} */
export async function POST(req) {
    // page request promise
    const promise = req.request.json();
    // page request paramater
    const bodyParams = await promise.then(r => {return r;});
    const weight = Number(bodyParams.weight);
    const reps = Number(bodyParams.reps);
    if (weight === NaN || reps === NaN) {
        error(400, '숫자만 입력하세요!');
    }
    const apiData = await axios.post(`${RMCALC_EXPRESS_URL}/api/calc`, bodyParams)
    return new Response(JSON.stringify(apiData.data));
}