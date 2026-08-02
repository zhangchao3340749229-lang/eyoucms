/* ============================================================
   Manga Theme - EyouCMS Frontend JavaScript
   ============================================================ */
(function () {
  'use strict';

  // ---- Mobile menu toggle ----
  var menuToggle = document.querySelector('.mg-menu-toggle');
  var nav = document.querySelector('.mg-nav');
  var search = document.querySelector('.mg-search');
  var searchToggle = document.querySelector('.mg-search-toggle');

  if (menuToggle && nav) {
    menuToggle.addEventListener('click', function () {
      menuToggle.classList.toggle('active');
      nav.classList.toggle('mobile-open');
      if (search) search.classList.remove('mobile-open');
    });
  }

  if (searchToggle && search) {
    searchToggle.addEventListener('click', function (e) {
      e.preventDefault();
      search.classList.toggle('mobile-open');
      if (nav) nav.classList.remove('mobile-open');
      if (menuToggle) menuToggle.classList.remove('active');
    });
  }

  // Close mobile menus when clicking outside
  document.addEventListener('click', function (e) {
    if (nav && nav.classList.contains('mobile-open')) {
      if (!nav.contains(e.target) && e.target !== menuToggle && !menuToggle.contains(e.target)) {
        nav.classList.remove('mobile-open');
        if (menuToggle) menuToggle.classList.remove('active');
      }
    }
  });

  // ---- Video lazy load with IntersectionObserver ----
  var videos = document.querySelectorAll('.mg-hero-video[data-src]');
  if ('IntersectionObserver' in window && videos.length > 0) {
    var videoObserver = new IntersectionObserver(function (entries, observer) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          var video = entry.target;
          var source = video.querySelector('source');
          if (source && !source.src) {
            source.src = video.getAttribute('data-src');
            video.load();
            video.play().catch(function () {});
          }
          observer.unobserve(video);
        }
      });
    }, { rootMargin: '200px' });

    videos.forEach(function (v) { videoObserver.observe(v); });
  } else {
    // Fallback: load all videos immediately
    videos.forEach(function (video) {
      var source = video.querySelector('source');
      if (source && !source.src) {
        source.src = video.getAttribute('data-src');
        video.load();
      }
    });
  }

  // ---- Video play/pause button ----
  var playBtns = document.querySelectorAll('.mg-video-play');
  playBtns.forEach(function (btn) {
    var video = btn.closest('.mg-hero-video-wrap') ?
      btn.closest('.mg-hero-video-wrap').querySelector('.mg-hero-video') : null;
    if (!video) return;

    btn.addEventListener('click', function () {
      if (video.paused) {
        video.play().catch(function () {});
        btn.setAttribute('aria-label', '暂停视频');
        btn.innerHTML = '&#10073;&#10073;';
      } else {
        video.pause();
        btn.setAttribute('aria-label', '播放视频');
        btn.innerHTML = '&#9654;';
      }
    });

    // Sync button state on video events
    video.addEventListener('play', function () {
      btn.setAttribute('aria-label', '暂停视频');
      btn.innerHTML = '&#10073;&#10073;';
    });
    video.addEventListener('pause', function () {
      btn.setAttribute('aria-label', '播放视频');
      btn.innerHTML = '&#9654;';
    });
  });

  // ---- Respect reduced motion ----
  if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    videos.forEach(function (v) { v.pause && v.pause(); });
  }

  // ---- Search form validation ----
  var searchForms = document.querySelectorAll('.mg-search-form');
  searchForms.forEach(function (form) {
    form.addEventListener('submit', function (e) {
      var input = form.querySelector('.mg-search-input');
      if (input && input.value.trim() === '') {
        e.preventDefault();
        input.focus();
      }
    });
  });
})();
