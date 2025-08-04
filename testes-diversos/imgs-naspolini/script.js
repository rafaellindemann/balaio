const galeria = document.getElementById('galeria');

// Gera os caminhos das imagens de 01.png a 15.png
const imagens = Array.from({ length: 15 }, (_, i) => {
  const num = String(i + 1).padStart(2, '0'); // Garante dois dígitos
  return `imgs/${num}.png`;
});

// Cria os cards
imagens.forEach((src, index) => {
  const card = document.createElement('div');
  card.classList.add('card');
  card.innerHTML = `
    <img src="${src}" alt="Imagem ${index + 1}">
    <div class="overlay"></div>
  `;
  card.addEventListener('click', () => {
    card.classList.add('revelado');
  });
  galeria.appendChild(card);
});



// const galeria = document.getElementById('galeria');

// // Lista de 15 imagens (substitua por URLs reais se quiser)
// const imagens = Array.from({ length: 15 }, (_, i) =>
//   `https://picsum.photos/300/200?random=${i + 1}`
// );





// // Cria os cards
// imagens.forEach((src, index) => {
//   const card = document.createElement('div');
//   card.classList.add('card');
//   card.innerHTML = `
//     <img src="${src}" alt="Imagem ${index + 1}">
//     <div class="overlay"></div>
//   `;
//   card.addEventListener('click', () => {
//     card.classList.add('revelado');
//   });
//   galeria.appendChild(card);
// });
