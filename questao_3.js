const faturamento_diario = [
  { data: "10-10-2024", valor: 5000 },
  { data: "09-10-2024", valor: 4000 },
];

function calcula_faturamento() {
  let menor = faturamento_diario[0];
  let maior = faturamento_diario[0];

  let soma_media_anual = faturamento_diario[0].valor;
  let dias_media = 1;

  for (let i = 1; i < faturamento_diario.length; i++) {
    if (faturamento_diario[i].valor < menor.valor) {
      menor = faturamento_diario[i];
    }
    if (faturamento_diario[i].valor > maior.valor) {
      maior = faturamento_diario[i];
    }
    if (faturamento_diario[i].valor !== 0) {
      soma_media_anual = soma_media_anual + faturamento_diario[i].valor;
      dias_media++;
    }
  }

  const media_anual = soma_media_anual / dias_media;
  let dias_maior_media = 0;

  for (let i = 0; i < faturamento_diario.length; i++) {
    if (faturamento_diario[i].valor > media_anual) {
      dias_maior_media++;
    }
  }

    return { menor, maior, dias_maior_media };
}

console.log(calcula_faturamento());
