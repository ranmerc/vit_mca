document.addEventListener("DOMContentLoaded", () => {
  const body = document.querySelector("body");
  body.style.fontFamily = "Arial, Helvetica, sans-serif";
  body.innerHTML = `
    <h1>Browser Information</h1>
    <p><b>App Name:</b> ${navigator.appName}</p>
    <p><b>App Version:</b> ${navigator.appVersion}</p>
    <p><b>User Agent:</b> ${navigator.userAgent}</p>
    <p><b>Language:</b> ${navigator.language}</p>
    <p><b>Platform:</b> ${navigator.platform}</p>
    `;
});
