<script>
	function calculate1RM() {
            // @ts-ignore
            const weight = parseFloat(document.getElementById('weight').value);
            // @ts-ignore
            const reps = parseInt(document.getElementById('reps').value);
            
            if (isNaN(weight) || isNaN(reps) || reps <= 0) {
                alert("Please enter valid weight and repetitions.");
                return;
            }

            const epley = weight * (1 + 0.0333 * reps);
            const brzycki = weight / (1.0278 - 0.0278 * reps);
            const lander = (weight * 100) / (101.3 - 2.67123 * reps);
            const lombardi = weight * Math.pow(reps, 0.10);
            const mayhew = weight / (0.522 + 0.419 * Math.exp(-0.055 * reps));
            const oconner = weight * (1 + 0.025 * reps);
            const wathan = (weight * 100) / (48.8 + 53.8 * Math.exp(-0.075 * reps));

            const resultDiv = document.getElementById('result');
            // @ts-ignore
            resultDiv.innerHTML = `
                <h2>Results:</h2>
                <p>Epley: ${epley.toFixed(2)} kg</p>
                <p>Brzycki: ${brzycki.toFixed(2)} kg</p>
                <p>Lander: ${lander.toFixed(2)} kg</p>
                <p>Lombardi: ${lombardi.toFixed(2)} kg</p>
                <p>Mayhew: ${mayhew.toFixed(2)} kg</p>
                <p>O'Conner: ${oconner.toFixed(2)} kg</p>
                <p>Wathan: ${wathan.toFixed(2)} kg</p>
            `;
	}
</script>

<svelte:head>
	<title>Calculate example</title>
	<meta name="description" content="Calculate example" />
</svelte:head>

<div class="container">
	<h1>1RM Calculator</h1>
	<label for="weight">Weight (kg):</label>
	<input type="number" id="weight" required>
	
	<label for="reps">Repetitions:</label>
	<input type="number" id="reps" required>
	
	<button on:click={calculate1RM}>Calculate 1RM</button>
	
	<div class="result" id="result"></div>
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