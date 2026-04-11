/* ============================================
   大同 Skill —— 主脚本
   ============================================ */

(function() {
  'use strict';

  /* ---------- Header Scroll Effect ---------- */
  const header = document.getElementById('site-header');
  let lastScrollY = 0;

  function handleHeaderScroll() {
    const scrollY = window.scrollY;
    if (scrollY > 60) {
      header.classList.add('scrolled');
    } else {
      header.classList.remove('scrolled');
    }
    lastScrollY = scrollY;
  }

  window.addEventListener('scroll', handleHeaderScroll, { passive: true });

  /* ---------- Active Nav Link ---------- */
  const sections = document.querySelectorAll('section[id]');
  const navLinks = document.querySelectorAll('.nav-link');

  function updateActiveNav() {
    const scrollY = window.scrollY + 100;

    sections.forEach(section => {
      const sectionTop = section.offsetTop - 120;
      const sectionHeight = section.offsetHeight;
      const sectionId = section.getAttribute('id');

      if (scrollY >= sectionTop && scrollY < sectionTop + sectionHeight) {
        navLinks.forEach(link => {
          link.classList.remove('active');
          if (link.getAttribute('href') === '#' + sectionId) {
            link.classList.add('active');
          }
        });
      }
    });
  }

  window.addEventListener('scroll', updateActiveNav, { passive: true });

  /* ---------- Mobile Nav Toggle ---------- */
  const navToggle = document.getElementById('nav-toggle');
  const mainNav = document.getElementById('main-nav');

  if (navToggle && mainNav) {
    navToggle.addEventListener('click', () => {
      navToggle.classList.toggle('active');
      mainNav.classList.toggle('open');
    });

    // Close nav when clicking a link
    mainNav.querySelectorAll('.nav-link').forEach(link => {
      link.addEventListener('click', () => {
        navToggle.classList.remove('active');
        mainNav.classList.remove('open');
      });
    });
  }

  /* ---------- Install Tabs ---------- */
  const installTabs = document.querySelectorAll('.install-tab');
  const installPanels = document.querySelectorAll('.install-panel');

  installTabs.forEach(tab => {
    tab.addEventListener('click', () => {
      const target = tab.dataset.tab;

      installTabs.forEach(t => t.classList.remove('active'));
      installPanels.forEach(p => p.classList.remove('active'));

      tab.classList.add('active');
      const panel = document.querySelector(`.install-panel[data-panel="${target}"]`);
      if (panel) {
        panel.classList.add('active');
      }
    });
  });

  /* ---------- Copy Code ---------- */
  window.copyCode = function(button) {
    const codeBlock = button.closest('.code-block');
    const code = codeBlock.querySelector('code');
    if (!code) return;

    const text = code.textContent || code.innerText;

    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(() => {
        showCopyFeedback(button, '已复制!');
      }).catch(() => {
        fallbackCopy(text, button);
      });
    } else {
      fallbackCopy(text, button);
    }
  };

  function fallbackCopy(text, button) {
    const textarea = document.createElement('textarea');
    textarea.value = text;
    textarea.style.position = 'fixed';
    textarea.style.opacity = '0';
    document.body.appendChild(textarea);
    textarea.select();
    try {
      document.execCommand('copy');
      showCopyFeedback(button, '已复制!');
    } catch (err) {
      showCopyFeedback(button, '复制失败');
    }
    document.body.removeChild(textarea);
  }

  function showCopyFeedback(button, message) {
    const original = button.textContent;
    button.textContent = message;
    button.style.color = '#27c93f';
    button.style.borderColor = '#27c93f';
    setTimeout(() => {
      button.textContent = original;
      button.style.color = '';
      button.style.borderColor = '';
    }, 2000);
  }

  /* ---------- Intersection Observer Animations ---------- */
  const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
  };

  const fadeObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('in-view');
        fadeObserver.unobserve(entry.target);
      }
    });
  }, observerOptions);

  // Observe skill cards
  document.querySelectorAll('.skill-card').forEach((card, index) => {
    card.style.opacity = '0';
    card.style.transform = 'translateY(20px)';
    card.style.transition = `opacity 0.5s ease ${index * 0.06}s, transform 0.5s ease ${index * 0.06}s`;
    fadeObserver.observe(card);
  });

  // Observe stat cards
  document.querySelectorAll('.stat-card').forEach((card, index) => {
    card.style.opacity = '0';
    card.style.transform = 'translateY(15px)';
    card.style.transition = `opacity 0.4s ease ${index * 0.08}s, transform 0.4s ease ${index * 0.08}s`;
    fadeObserver.observe(card);
  });

  // Observe workflow steps
  document.querySelectorAll('.wf-step').forEach((step, index) => {
    step.style.opacity = '0';
    step.style.transform = 'translateY(10px)';
    step.style.transition = `opacity 0.4s ease ${index * 0.1}s, transform 0.4s ease ${index * 0.1}s`;
    fadeObserver.observe(step);
  });

  // Add CSS for in-view state
  const style = document.createElement('style');
  style.textContent = `
    .skill-card.in-view,
    .stat-card.in-view,
    .wf-step.in-view {
      opacity: 1 !important;
      transform: translateY(0) !important;
    }
  `;
  document.head.appendChild(style);

  /* ---------- Pyramid Layer Hover ---------- */
  document.querySelectorAll('.pyramid-layer').forEach(layer => {
    layer.addEventListener('mouseenter', () => {
      document.querySelectorAll('.pyramid-layer').forEach(l => l.style.opacity = '0.6');
      layer.style.opacity = '1';
    });
    layer.addEventListener('mouseleave', () => {
      document.querySelectorAll('.pyramid-layer').forEach(l => l.style.opacity = '1');
    });
  });

  /* ---------- Smooth Scroll for Safari ---------- */
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
      const href = this.getAttribute('href');
      if (href === '#') return;
      
      const target = document.querySelector(href);
      if (target) {
        e.preventDefault();
        target.scrollIntoView({
          behavior: 'smooth',
          block: 'start'
        });
      }
    });
  });

})();
