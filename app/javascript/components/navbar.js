const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-aume');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.remove('bg-transparent');
        navbar.classList.add('bg-white');
      } else {
        navbar.classList.remove('bg-white');
      }
    });
  }
}


// const navItems = document.querySelector('.navbar-nav');
// const itemList = navItems.querySelectorAll('li');

// itemList.classList.add('active');
// console.log(itemList);

// itemList.forEach(item => item.addEventListener('click', handleClickOnNavItem));

// function handleClickOnNavItem(event) {
//   // console.log(event);
//   event.currentTarget.classList.add('active');
// };



export { initUpdateNavbarOnScroll };
// export { handleClickOnNavItem };
