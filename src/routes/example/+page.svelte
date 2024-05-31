<script>
	import axios from 'axios';

	let weight = 0;
	let reps = 0;

	/** @type {any[]} */
	let data = [];
	async function calc() {
		try {
			const response = await axios.post('api/calc', {weight, reps});
			data = await response.data;
		} catch (error) {
			console.log(error);
		}
	}
</script>

<svelte:head>
	<title>Calculate example</title>
	<meta name="description" content="Calculate example" />
</svelte:head>

<div class="container">
	<h1>1RM Calculator</h1>
	<label for="weight">Weight (kg):</label>
	<input type="number" bind:value={weight}>
	
	<label for="reps">Repetitions:</label>
	<input type="number" bind:value={reps}>
	
	<button on:click={calc}>Calculate 1RM</button>
	
	<div class="result" id="result">
		{#each data as d}
			<p>{d.name}: {d.oneRM} kg</p>
		{/each}
	</div>
</div>

<style>
	.container {
		max-width: 600px;
		margin: auto;
	}
	h1 {
		text-align: center;
	}
	input[type="number"] {
		width: 100%;
		padding: 10px;
		margin: 10px 0;
	}
	button {
		width: 100%;
		padding: 10px;
		background-color: #4CAF50;
		color: white;
		border: none;
		cursor: pointer;
	}
	button:hover {
		background-color: #45a049;
	}
	.result {
		margin-top: 20px;
		padding: 10px;
		background-color: #f1f1f1;
	}
</style>