import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["We are waiting for your movies", "Enjoy yourself on our site"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
