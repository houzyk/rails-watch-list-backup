import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Have a Relaxing Time", "Watch A Movie"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
