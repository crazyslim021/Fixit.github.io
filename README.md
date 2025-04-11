# Portfolio Template

### A beautiful minimal and accessible portfolio template for Developers ✨.

To View the live site click [here &rarr;](https://portfolio-template.surge.sh)

![Portfolio Gif](/images/portfolio.gif)

## Want to learn How to create a template like this ?

You can watch [this video series](https://www.youtube.com/watch?v=1nchVfpMGSg&list=PLwJBGAxcH7GzdavgKlCACbESzr-40lw3L) on my youtube channel where I re-create this from scratch. 



## Features

- Clean, Simple and Modern UI Design.
- Uses No CSS or JavaScript Frameworks or libraries as dependencies.
- Built with only HTML, CSS and a bit of JavaScript 🔨.
- Well Organized Documentation.
- Keyboard support.
- Fully Responsive.
- Loads fast ⚡.

## Lighthouse Report

![Lighthouse Report](/images/lighthouse-report.png)

### Contributions are warmly welcomed ❤️.

## Getting Started 🚀

You'll need [Git](https://git-scm.com) to be installed on your computer. 
```
# Clone this repository
$ git clone https://github.com/nisarhassan12/portfolio-template
```

If you don't have Git installed or you don't like using the terminal then you can download the [zip](https://github.com/nisarhassan12/portfolio-template/archive/master.zip) and extract that and open the extracted folder in the code editor of your your choice.

## Editing the Template 🔨

Go to `index.html` and fill your information. 

### Header

In all of the places where you're supposed to fill your information you'll find HTML comments. As shown below just replace what is already in the opening and closing tags below the comment with your information.

```html
<div class="header__text-box row">
    <div class="header__text">
        <h1 class="heading-primary">
        <!-- Replace the following name with your name -->
        <span>Fix My Computer</span>
        </h1>
        <!-- Put a small paragraph about yourself -->
        <p>A Company based in Stockholm, Sweden .</p>
        <a href="#contact" class="btn btn--pink">Get in touch</a>
    </div>
</div>
```

### Work Section

Each div with class `work__box` represents a project, replace the contents of the all the tags with the information of your projects.

```html
<div class="work__box">
    <div class="work__text">
    <h3>Our Services</h3>
    <p>
        we provide the best IT solution for everyone.
    </p>
    <ul class="work__list">
        <li>Software Consultation</li>
        <li>Data recovery</li>
        <li>Performance</li>
        <li>Software subscription & recommendation</li>
    </ul>

    <div class="work__links">
        <a href="#" class="link__text">
        Visit Site <span>&rarr;</span>
        </a> 
        <a href="https://github.com/crazyslim021/portfolio" target="_blank">
        <img src="./images/github.svg" class="work__code" alt="GitHub">
        </a>
    </div>
    </div>
    <div class="work__image-box">
        <img
            src="./images/project-1.png"
            class="work__image"
            alt="Project 1"
        />
    </div>
</div>
```

For changing the screenshot:
- first place the image in `images/` folder and then in HTML replace the name in `src` with the name of your image.

- Recommended size for project image (1366 x 767px) also make sure the size of all  project images is the same.

```html
<img
    src="./images/name-of-your-image.png"
    class="work__image"
    alt="Project 1"
/>
```

### Clients Section

- Place the logos of the clients and companies that you have worked with in `images/` directory and then replace the name in `src` with the name of your logos accordingly.

- Make sure that you don't have whitespace on either side of the logos.

```html
<img
    src="./images/your-logo.png"
    class="client__logo"
    alt="Your Logo"
/>
```

### About Section

- Replace the contents in the below paragraph with information about yourself.
- Place a nice photo of yourself in the `images/` directory and then change the name in the src with your image name.

```html
<section class="about" id="about">
    <div class="row">
        <h2>About Us</h2>
        <div class="about__content">
            <div class="about__text">
                <!-- Replace the below paragraph with info about yourself -->
                <p>
                we’re passionate about making technology work for you. Whether you're facing performance issues with your PC, need expert software repairs, or are simply                    looking for the best software recommendations and subscriptions, we've got you covered.
                We specialize in providing reliable, efficient, and personalized IT solutions to individuals and businesses alike. Our team of tech experts is committed to                  diagnosing problems quickly, offering clear guidance, and delivering effective results — all while keeping your digital world running smoothly.
                From boosting your system’s performance to helping you choose the right software tools for your needs, we take the hassle out of tech so you can focus on                    what matters most.
                Let us handle the tech, so you can stay productive and stress-free.
                </p>
                <!-- Provide a link to your resume -->
                <a href="#" class="btn">My Resume</a>
            </div>

            <div class="about__photo-container">
                <!-- Add a nice photo of yourself -->
                <img
                class="about__photo"
                src="./images/corinne-kutz-211251.jpg"
                alt=""
                />
            </div>
        </div>
    </div>
</section>
```

### Contact Section

- Modify the paragraph to your likings.
- Replace the email with yours in the `href` anchor property and the text also.

```html
<section class="contact" id="contact">
      <div class="row">
        <h2>Get in Touch</h2>
        <div class="contact__info">
          <p>
            Are you looking for a fast-performing and user-friendly website to
            represent your product or business? or looking for any kind of
            consultation? or want to ask questions? or have some advice for me
            or just want to say "Hi 👋" in any case feel free to Let me know. I
            will do my best to respond back. 😊 The quickest way to reach out to
            me is via an email.
          </p>
          <!-- Replace the email with yours -->
          <a href="mailto:you@example.com" class="btn">you@example.com</a>
        </div>
      </div>
</section>
```

### Footer

- Replace the `href` attribute values to your profile URLs for all anchors.
- Remove the div with class `footer__github-buttons`.

```html
<footer role="contentinfo" class="footer">
    <div class="row">
        <!-- Update the links to point to your accounts -->
        <ul class="footer__social-links">
            <li class="footer__social-link-item">
                <a href="https://twitter.com/nisarhassan12/">
                    <img src="./images/twitter.svg" class="footer__social-image" alt="Twitter">
                </a>
            </li>
            <li class="footer__social-link-item">
                <a href="https://github.com/nisarhassan12/">
                    <img src="./images/github.svg" class="footer__social-image" alt="Github">
                </a>
            </li>
            <li class="footer__social-link-item">
                <a href="https://codepen.io/nisar_hassan">
                    <img src="./images/codepen.svg" class="footer__social-image" alt="Codepen">
                </a>
            </li>
            <li class="footer__social-link-item">
                <a href=https://www.linkedin.com/in/nisar-hassan-naqvi-413466199/">
                    <img src="./images/linkedin.svg" class="footer__social-image" alt="Linkedin">
                </a>
            </li>
        </ul>

        <!-- If you give me some credit by keeping the below paragraph, will be huge for me 😊 Thanks. -->
        <p>
          &copy; 2020 - Template designed & developed by <a href="https://nisar.dev">Nisar</a>.
        </p>
        <div class="footer__github-buttons">
          <iframe
            src="https://ghbtns.com/github-btn.html?user=nisarhassan12&repo=portfolio-template&type=watch&count=true" 
            frameborder="0" scrolling="0" width="170" height="20" title="Watch Portfolio Template on GitHub">
          </iframe>
        </div>
    </div>
</footer>
```
