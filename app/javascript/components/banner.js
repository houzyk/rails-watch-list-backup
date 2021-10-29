import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find Movies..", "Rate Them..", "All In One Place!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
