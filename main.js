window.onload = function() {

    document.getElementById("scrollButton").addEventListener("click", function() {
        window.scrollBy(0, 1000);
    });

    const redirectDiv = document.querySelector('.logo');
    console.log("hello")
    redirectDiv.addEventListener('click',
        function(e) {
            window.location.href = '/index.html';
        }
    );  
};