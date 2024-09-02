var current = null;
document.querySelector('#username').addEventListener('focus', function(e) {
    if (current) current.pause();
    current = anime({
        targets: 'path',
        strokeDashoffset: {
            value: 0,
            duration: 700,
            easing: 'easeOutQuart'
        },
        strokeDasharray: {
            value: '240 1386',
            duration: 700,
            easing: 'easeOutQuart'
        }
    });
});
document.querySelector('#password').addEventListener('focus', function(e) {
    if (current) current.pause();
    current = anime({
        targets: 'path',
        strokeDashoffset: {
            value: -336,
            duration: 700,
            easing: 'easeOutQuart'
        },
        strokeDasharray: {
            value: '240 1386',
            duration: 700,
            easing: 'easeOutQuart'
        }
    });
});
document.querySelector('#submit').addEventListener('focus', function(e) {
    if (current) current.pause();
    current = anime({
        targets: 'path',
        strokeDashoffset: {
            value: -730,
            duration: 700,
            easing: 'easeOutQuart'
        },
        strokeDasharray: {
            value: '530 1386',
            duration: 700,
            easing: 'easeOutQuart'
        }
    });
});
function submitLogin() {
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    var form = document.createElement('form');
    form.method = 'post';
    form.action = '<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>';

    var input1 = document.createElement('input');
    input1.type = 'hidden';
    input1.name = 'username';
    input1.value = username;

    var input2 = document.createElement('input');
    input2.type = 'hidden';
    input2.name = 'password';
    input2.value = password;

    form.appendChild(input1);
    form.appendChild(input2);
    document.body.appendChild(form);
    form.submit();
}