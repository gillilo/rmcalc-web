
<svelte:head>
	<title>API Description</title>
	<meta name="description" content="Description about API" />
</svelte:head>

<div class="card c">
	<div class="card-header">
		<div class="card-title">
			1RM 계산 (모든 공식 평균)
		</div>
	</div>
	<div class="card-body">
		<div class="crad-text">
			<div class="row o">
				<div class="f col-2">METHOD</div>
				<div class="v col-10 g">GET</div>
			</div>
			<div class="row o">
				<div class="f col-2">URL</div>
				<div class="v col-10">/api/calc</div>
			</div>
			<div class="row o">
				<div class="f col-2">PARAMETER</div>
				<div class="v col-10">
					weight<br/>
					reps
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Request example</div>
				<div class="v col-10">
					/api/calc<mark>&weight=100&reps=10</mark>
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Response example</div>
				<div class="v col-10">
					129.64365910841474
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">
					Description
				</div>
				<div class="v col-10">
					모든 1RM 계산 공식으로 계산한 후 평균값을 반환 합니다.
				</div>
			</div>
		</div>
	</div>
</div>

<div class="card c">
	<div class="card-header">
		<div class="card-title">
			1RM 계산 (모든 공식)
		</div>
	</div>
	<div class="card-body">
		<div class="crad-text">
			<div class="row o">
				<div class="f col-2">METHOD</div>
				<div class="v col-10 p">POST</div>
			</div>
			<div class="row o">
				<div class="f col-2">URL</div>
				<div class="v col-10">/api/calc</div>
			</div>
			<div class="row o">
				<div class="f col-2">PARAMETER</div>
				<div class="v col-10">
					weight<br/>
					reps
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Request example</div>
				<div class="v col-10">
					/api/calc<br/>
					body: &#123;"weight": 100, "reps": 10&#125;
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Response example</div>
				<div class="v col-10">
					&#91;<br/>
					&emsp;&#123;<br/>
					&emsp;&emsp;"name": "Epley",<br/>
					&emsp;&emsp;"oneRM": 133.33333333333331<br/>
					&emsp;&#125;,<br/>
					&emsp;...<br/>
					&emsp;&#123;<br/>
					&emsp;&emsp;"name": "Wathen",<br/>
					&emsp;&emsp;"oneRM": 134.74669948168537<br/>
					&emsp;&#125;<br/>
					&#93;
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">
					Description
				</div>
				<div class="v col-10">
					모든 계산 공식으로 값을 반환 합니다.<br/>
					name 필드는 계산 공식 명칭입니다.<br/>
					oneRM 필드는 공식에 따른 값입니다.
				</div>
			</div>
		</div>
	</div>
</div>

<div class="card c">
	<div class="card-header">
		<div class="card-title">
			1RM 계산 (특정 공식 값만 반환)
		</div>
	</div>
	<div class="card-body">
		<div class="crad-text">
			<div class="row o">
				<div class="f col-2">METHOD</div>
				<div class="v col-10 g">GET</div>
			</div>
			<div class="row o">
				<div class="f col-2">URL</div>
				<div class="v col-10">/api/calc/&#123;formula&#125;</div>
			</div>
			<div class="row o">
				<div class="f col-2">PARAMETER</div>
				<div class="v col-10">
					weight<br/>
					reps
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Request example</div>
				<div class="v col-10">
					/api/calc/epl<mark>&weight=100&reps=10</mark>
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Response example</div>
				<div class="v col-10">
					133.33333333333331
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">
					Description
				</div>
				<div class="v col-10">
					특정한 1RM 계산 공식으로 계산한 후 값을 반환 합니다.<br/>
					&#123;formula&#125; 부분에 들어올 수 있는 값들은 다음과 같습니다.<br/>
					<mark>Epley</mark>: epl<br/>
					<mark>Brzycki</mark>: brz<br/>
					<mark>Adams</mark>: adm<br/>
					<mark>Baechle</mark>: bch<br/>
					<mark>Berger</mark>: ber<br/>
					<mark>Brown</mark>: brn<br/>
					<mark>Kemmler et al.</mark>: kml<br/>
					<mark>Landers</mark>: lnd<br/>
					<mark>Lombardi</mark>: lmb<br/>
					<mark>Mayhew et al.</mark>: myh<br/>
					<mark>Naclerio et al.</mark>: ncl<br/>
					<mark>O'Conner et al.</mark>: ocn<br/>
					<mark>Wathen</mark>: wth<br/>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="card c">
	<div class="card-header">
		<div class="card-title">
			1RM 계산 (특정 공식 이름, 값 반환)
		</div>
	</div>
	<div class="card-body">
		<div class="crad-text">
			<div class="row o">
				<div class="f col-2">METHOD</div>
				<div class="v col-10 p">POST</div>
			</div>
			<div class="row o">
				<div class="f col-2">URL</div>
				<div class="v col-10">/api/calc/&#123;formula&#125;</div>
			</div>
			<div class="row o">
				<div class="f col-2">PARAMETER</div>
				<div class="v col-10">
					weight<br/>
					reps
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Request example</div>
				<div class="v col-10">
					/api/calc/epl<br/>
					body: &#123;"weight": 100, "reps": 10&#125;
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">Response example</div>
				<div class="v col-10">
					&#123;<br/>
					&emsp;"name": "Epley",<br/>
					&emsp;"oneRM": 133.33333333333331<br/>
					&#125;
				</div>
			</div>
			<div class="row o">
				<div class="f col-2">
					Description
				</div>
				<div class="v col-10">
					모든 계산 공식으로 값을 반환 합니다.<br/>
					name 필드는 계산 공식 명칭입니다.<br/>
					oneRM 필드는 공식에 따른 값입니다.<br/>
					&#123;formula&#125; 부분에 들어올 수 있는 값들은 다음과 같습니다.<br/>
					<mark>Epley</mark>: epl<br/>
					<mark>Brzycki</mark>: brz<br/>
					<mark>Adams</mark>: adm<br/>
					<mark>Baechle</mark>: bch<br/>
					<mark>Berger</mark>: ber<br/>
					<mark>Brown</mark>: brn<br/>
					<mark>Kemmler et al.</mark>: kml<br/>
					<mark>Landers</mark>: lnd<br/>
					<mark>Lombardi</mark>: lmb<br/>
					<mark>Mayhew et al.</mark>: myh<br/>
					<mark>Naclerio et al.</mark>: ncl<br/>
					<mark>O'Conner et al.</mark>: ocn<br/>
					<mark>Wathen</mark>: wth<br/>
				</div>
			</div>
		</div>
	</div>
</div>



<style lang="scss">
	.c {
		margin-bottom: 1rem;
	}
	.o {
		padding: 0.5rem;
		border-bottom: 1px solid $color--black-20;
		margin-bottom: 0.5rem;
		.f {
			font-weight: 600;
		}
		.g {
			color: green;
		}
		.p {
			color: firebrick;
		}
	}
</style>