document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("more-link").addEventListener("click", function() {
        var dots = document.getElementById("dots");
        var moreText = document.getElementById("more");
        var moreLink = document.getElementById("more-link");

        if (dots.style.display === "none") {
            dots.style.display = "inline";
            moreText.style.display = "none";
            moreLink.innerHTML = "más";
        } else {
            dots.style.display = "none";
            moreText.style.display = "inline";
            moreLink.innerHTML = "menos";
        }
    });
});
