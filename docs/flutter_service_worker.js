'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets\AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"/assets\FontManifest.json": "451d942a0569a3e0d8efd9a9767fe50c",
"/assets\fonts\MaterialIcons-Regular.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"/assets\fonts\Plain-Ultrathin.ttf": "13adb8ecf0b34eeb6dc616544371b8d5",
"/assets\LICENSE": "164991561a5a2516c32a4d0381a2b28b",
"/assets\packages\cupertino_icons\assets\CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/icons\Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons\Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/index.html": "195f3ff905086cb3701e256f40bf90f2",
"/main.dart.js": "8e9a110c8dc9cb6306a561be2c1d0b12",
"/manifest.json": "26feed9cef8fecec3fc58f4644ca4760"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
