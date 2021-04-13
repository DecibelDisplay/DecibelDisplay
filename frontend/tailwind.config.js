module.exports = {
    purge: ["./public/**/*.html", "./src/**/*.{js,jsx,ts,tsx,vue}"],
    mode: "jit",
    darkMode: false, // or 'media' or 'class'
    theme: {
        extend: {},
        fontFamily: {
            body: ["'PT Sans'"], //, "Helvetica", "Arial", "sans-serif"
            heading: ["Comfortaa"] // "Helvetica", "Arial", "serif"
        }
    },
    variants: {
        extend: {}
    },
    plugins: []
};
