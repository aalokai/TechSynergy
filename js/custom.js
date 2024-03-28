// nav menu style
var nav = $("#navbarSupportedContent");
var btn = $(".custom_menu-btn");
btn.click;
btn.click(function (e) {
  e.preventDefault();
  nav.toggleClass("lg_nav-toggle");
  document.querySelector(".custom_menu-btn").classList.toggle("menu_btn-style");
});

function getCurrentYear() {
  var d = new Date();
  var currentYear = d.getFullYear();

  $("#displayDate").html(currentYear);
}

getCurrentYear();

// Smooth scrolling animation
document.getElementById("arrowButton").addEventListener("click", function () {
  document.getElementById("navbar").scrollIntoView({ behavior: "smooth" });
});

const allLinks = document.querySelectorAll("a:link");

allLinks.forEach(function (link) {
  link.addEventListener("click", function (e) {
    // e.preventDefault();
    const href = link.getAttribute("href");

    // Scroll back to top
    if (href === "#" || href === "#home") {
      e.preventDefault();
      window.scrollTo({
        top: 0,
        behavior: "smooth",
      });
    }
    // Scroll to other links
    if (
      href !== "#" &&
      href !== "#home" &&
      href.startsWith("#") &&
      href !== "#carouselExampleIndicators"
    ) {
      e.preventDefault();
      const sectionEl = document.querySelector(href);
      sectionEl.scrollIntoView({ behavior: "smooth" });
    }
  });
});
