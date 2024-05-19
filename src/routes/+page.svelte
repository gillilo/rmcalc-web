<script>
</script>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

<main>
  <h1>One<br/>Repetition<br/>Maximum<br/>Calculator</h1>
  
  <section>
    <div class="section-title">One RepetitionMaximum</div>
      1RM(One RepetitionMaximum)은 특정 운동에서 한 번만 들 수 있는 최대 중량을 의미합니다.<br/>
      이는 개인의 근력 수준을 평가하는 데 중요한 지표로 사용됩니다.<br/>
      1RM을 통해 개인의 운동 능력을 평가하고, 운동 프로그램을 설계하는 데 필요한 기초 데이터를 얻을 수 있습니다.<br/>
  </section>

  <section>
    <div class="section-title">1RM의 중요성</div>
    <div class="row">
      <div class="col-4">
        <div class="card">
          <div class="card-header">
            근력 평가
          </div>
          <div class="card-body">
            1RM은 개인의 최대 근력을 평가하는 가장 직접적인 방법입니다.<br/>
            이를 통해 개인의 근력 수준을 파악하고, 그에 맞는 운동 프로그램을 설계할 수 있습니다.<br/>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="card">
          <div class="card-header">
            운동 프로그램 설계
          </div>
          <div class="card-body">
            1RM 값을 기반으로 각 운동의 적절한 중량을 설정할 수 있습니다.<br/>
            이는 운동의 효율성을 높이고, 부상 위험을 줄이는 데 도움이 됩니다.<br/>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="card">
          <div class="card-header">
            진행 상황 추적
          </div>
          <div class="card-body">
            주기적으로 1RM을 측정하면 개인의 근력 향상을 추적할 수 있습니다.<br/>
            이는 운동 목표 달성에 대한 동기부여를 제공할 수 있습니다.<br/>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="section-title">1RM 계산 방법</div>
    <p>
    1RM은 직접 측정하거나 간접적으로 추정할 수 있습니다. 직접 측정은 위험할 수 있으므로, 간접적인 방법을 주로 사용합니다. <br/>
    다음은 1RM을 추정하는 일반적인 방법입니다.<br/>
    </p>
    <ul>
      <li>
        직접 측정법: 최대 중량을 한 번 들어올려서 측정합니다. 이 방법은 경험 있는 운동자에게 적합하지만, 부상 위험이 있으므로 주의가 필요합니다.<br/>
      </li>
      <li>
        간접 추정법: 비교적 안전한 중량으로 여러 반복 횟수를 수행한 후, 이를 바탕으로 1RM을 계산하는 방법입니다. <br/>
        일반적으로 사용하는 공식 중 하나는 Epley 공식입니다: <br/>
        <div class="card mt-1">
          <div class="card-body">
            <div class="blockquote formula">
              1RM = w × (1 + 0.0333 × r) <br/>
            </div>
            <abbr title="attribute" class="blockquote-footer">
              여기서 w는 들 수 있는 최대 중량이고, r은 반복 횟수입니다.
            </abbr>
          </div>
        </div>
      </li>
    </ul>
  </section>

  <section>
    <div class="section-title">1RM 활용 방법</div>
    1RM을 활용하여 개인 맞춤형 운동 프로그램을 설계할 수 있습니다.<br/>
    예를 들어, 근력 향상을 목표로 한다면 1RM의 70-85% 중량을 사용하여 6-12회 반복하는 운동을 계획할 수 있습니다.<br/>
    반면, 근지구력을 목표로 한다면 1RM의 50-70% 중량을 사용하여 12-20회 반복하는 운동이 적합합니다.
  </section>

  <section>
    <div class="section-title">주의사항</div>
    <div class="row">
      <div class="col-4">
        <div class="card">
          <div class="card-header">
            부상 예방
          </div>
          <div class="card-body">
            충분한 준비 운동을 통해 몸을 따뜻하게 하고, 정확한 자세를 유지해야 합니다.<br/>
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="card">
          <div class="card-header">
            적절한 보조
          </div>
          <div class="card-body">
            중량이 큰 운동에서는 반드시 보조자의 도움을 받는 것이 좋습니다.
          </div>
        </div>
      </div>
      <div class="col-4">
        <div class="card">
          <div class="card-header">
            정기적인 재평가
          </div>
          <div class="card-body">
            근력 수준은 시간이 지나면서 변화할 수 있으므로, 주기적으로 1RM을 재평가하는 것이 필요합니다.
          </div>
        </div>
      </div>
    </div>
  </section>

  <figure class="text-center">
    <blockquote class="blockquote">
      <p>1RM은 개인의 운동 능력을 평가하고 향상시키는 데 중요한 도구입니다.</p>
    </blockquote>
    <figcaption class="blockquote-footer">
      이를 잘 활용하면 더욱 효과적이고 안전한 운동 프로그램을 설계할 수 있습니다.
    </figcaption>
  </figure>
</main>

<style lang="scss">
  main {
    h1 {
      font-size: 7rem;
      margin-bottom: 5rem;
      line-height: 7rem;
    }
    section {
      margin-bottom: 3rem;
      .section-title {
        font-size: 1.3rem;
        font-weight: 600;
        margin-bottom: 0.5rem;
      }
      p {
        margin-bottom: 0.5rem;
      }
    }
  }

  .card-body {
    font-size: 0.875rem;
  }

  abbr {
    font-size: 0.875rem;
  }
  .formula {
    margin: 0;
  }
  // .summary {
  //   font-size: 1.5rem;
  // }
</style>