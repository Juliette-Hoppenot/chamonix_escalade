const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-aume');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-aume-white');
      } else {
        navbar.classList.remove('navbar-aume-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
