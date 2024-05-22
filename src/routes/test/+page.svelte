<script>
	import axios from 'axios';

	let weight = 0;
	let reps = 0;

	async function calcAll() {
		const response = await axios.post('api/calcAll', {weight, reps});
		const data = response.data;
	}
</script>

<input type="number" bind:value={weight}> +
<input type="number" bind:value={reps}> =

<button on:click={calcAll}>Calculate</button>