<script>
	const formulas = [
		{
			name: "Epley",
			abbreviation: "EPL",
			formula: '(weight, reps) => reps > 1 ? weight * (1 + reps / 30) : weight'
		},
		{
			name: "Brzycki",
			abbreviation: "BRZ",
			formula: '(weight, reps) => weight / (1.0278 - 0.0278 * reps)'
		},
		{
			name: "Adams",
			abbreviation: "ADM",
			formula: '(weight, reps) => weight / (1 - 0.02 * reps)'
		},
		{
			name: "Baechle",
			abbreviation: "BCH",
			formula: '(weight, reps) => weight * (1 + 0.033 * reps)'
		},
		{
			name: "Berger",
			abbreviation: "BER",
			formula: '(weight, reps) => weight / (1.0261 * Math.exp(-0.0262 * reps))'
		},
		{
			name: "Brown",
			abbreviation: "BRN",
			formula: '(weight, reps) => weight * (0.9849 + 0.0328 * reps)'
		},
		{
			name: "Kemmler et al.",
			abbreviation: "KML",
			formula: '(weight, reps) => weight * (0.988 + 0.0104 * reps + 0.00190 * Math.pow(reps, 2) - 0.0000584 * Math.pow(reps, 3))'
		},
		{
			name: "Landers",
			abbreviation: "LND",
			formula: '(weight, reps) => weight / (1.013 - 0.0267123 * reps)'
		},
		{
			name: "Lombardi",
			abbreviation: "LMB",
			formula: '(weight, reps) => weight * Math.pow(reps, 0.10)'
		},
		{
			name: "Mayhew et al.",
			abbreviation: "MYH",
			formula: '(weight, reps) => weight / (0.522 + 0.419 * Math.exp(-0.055 * reps))'
		},
		{
			name: "Naclerio et al.",
			abbreviation: "NCL",
			formula: '(weight, reps) => weight / (0.951 * Math.exp(-0.021 * reps))'
		},
		{
			name: "O'Conner et al.",
			abbreviation: "OCN",
			formula: '(weight, reps) => weight * (1 + 0.025 * reps)'
		},
		{
			name: "Wathen",
			abbreviation: "WTH",
			formula: '(weight, reps) => weight / (0.4880 + 0.538 * Math.exp(-0.075 * reps))'
		}
    ]
</script>

<svelte:head>
	<title>Formula</title>
	<meta name="description" content="Formula of 1RM" />
</svelte:head>

<div class="body">
	<h1>1RM Calculation Formulas</h1>
	{#each formulas as formula, i}
	<div class="formula card">
		<div class="card-header">
			<div class="card-title">
				<h2>{i + 1}. {formula.name} 공식</h2>
			</div>
		</div>
		<div class="card-body">
			<div class="crad-content">
				<p><code>{formula.formula}</code></p>
			</div>
		</div>
	</div>
	{/each}
</div>

<style lang="scss">
	.body {
		h1 {
			text-align: center;
			margin-bottom: 5rem;
		}
		.formula {
			margin-bottom: 2rem;
			h2 {
				font-size: 1.2rem;
			}
			p {
				font-size: 1rem;
			}
		}
	}
</style>