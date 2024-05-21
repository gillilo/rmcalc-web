<script>
	const formulas = [
        {
            name: "Epley 공식",
            formula: "1RM = Weight × (1 + 0.0333 × Reps)"
        },
        {
            name: "Brzycki 공식",
            formula: "1RM = Weight / (1.0278 - 0.0278 × Reps)"
        },
        {
            name: "Lander 공식",
            formula: "1RM = (Weight × 100) / (101.3 - 2.67123 × Reps)"
        },
        {
            name: "Lombardi 공식",
            formula: "1RM = Weight × Reps^0.10"
        },
        {
            name: "Mayhew et al. 공식",
            formula: "1RM = Weight / (0.522 + 0.419 × e^-0.055 × Reps)"
        },
        {
            name: "O'Conner et al. 공식",
            formula: "1RM = Weight × (1 + 0.025 × Reps)"
        },
        {
            name: "Wathan 공식",
            formula: "1RM = (Weight × 100) / (48.8 + 53.8 × e^-0.075 × Reps)"
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