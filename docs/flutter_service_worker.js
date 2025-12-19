'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "53fb59e54fb87bb44dba7c2200e1dead",
"manifest.json": "ace26d0c71a6ddf01f5f72671a426a89",
"assets/NOTICES": "6bfd14c0110f89f35df407ff909db43b",
"assets/assets/cream2.jpg": "ce0f24bc60fc5ac8668dc4b92c329545",
"assets/assets/order%2520filter2.png": "d3be0c00f42aea94f8ecccf395e22103",
"assets/assets/lip5.jpg": "9f2ac9b90a1853b56dadaf5042f7f3e7",
"assets/assets/3.png": "ecd10236d1958a7ed7e337f95c39da45",
"assets/assets/tadeusz-lakota-Tb38UzCvKCY-unsplash.jpg": "f765444c562694e5e4ddd04a79a08656",
"assets/assets/cream5.jpg": "fef539b8a4c95ad4d2176d704df68b2a",
"assets/assets/shreesha-bhat-lz6z9GZu8hk-unsplash.jpg": "a652afeb34d8018fe137ec401771c617",
"assets/assets/health.png": "7b43ead567979a37c7e28c2844b83220",
"assets/assets/order%2520filter2(1).png": "d3be0c00f42aea94f8ecccf395e22103",
"assets/assets/lip1.jpg": "4271bbfcc5a54976d0f580efc634f8eb",
"assets/assets/lip2.jpg": "d549abd2544b8391fc45a59dc9a2b5c1",
"assets/assets/lip6.jpg": "58f882da8aea86226554013a528bf691",
"assets/assets/lip3.jpg": "ddbecb3f32c1dea615555aa7c935da2b",
"assets/assets/cream4.jpg": "89212e0a18120ea05a299b278f28bf68",
"assets/assets/alvaro-bernal-RgIKRYhmG2k-unsplash.jpg": "bd01a7e0f3bb06a9e76a459d9aae427d",
"assets/assets/lip4.jpg": "3e382b1743d7e79bf85ad8d93b1af8a9",
"assets/assets/order%2520filter4.png": "47b9a49f8e18febaf9af3d86e67d2a68",
"assets/assets/cream7.jpg": "369d4b3fa861e9531694581250acbab0",
"assets/assets/4.png": "48c5966469faddc44e1f1122004e4c66",
"assets/assets/order%2520filter3.png": "a793180233957e526b19659281349811",
"assets/assets/cream6.jpg": "5509dda0efd46541ea6eeb67b822a8e9",
"assets/assets/paul-cuoco-CO2vOhPqlrM-unsplash.jpg": "bda9df1a92eecd722766ed8a5ce353e1",
"assets/assets/andrik-langfield-0rTCXZM7Xfo-unsplash.jpg": "7f531c55a98fb5d6f3a78af247dee266",
"assets/assets/cream3.jpg": "9ca29a7df9b5a419321fa6b4e9d7fa3d",
"assets/assets/2.png": "b7bee00571828b932ad10455a5861395",
"assets/assets/1.png": "858b6c611f7d242a843c92dd735fcbbb",
"assets/assets/cream1.jpg": "eb60f0f380d2d445dd73ff2ebc3cca29",
"assets/AssetManifest.bin": "caea0b1c8bb80bcaef0c6e0f55d34d12",
"assets/AssetManifest.bin.json": "3e6ee7143c5e4088acf0e7b46ad10c9f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/fonts/MaterialIcons-Regular.otf": "7533fb63146f5fa6b830fde44476aa01",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"main.dart.js": "adf505877e07df32fb0bea19c296d5d1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"index.html": "1137687bd22a40af9c5cf9328059ffa9",
"/": "1137687bd22a40af9c5cf9328059ffa9",
"flutter_bootstrap.js": "741ed562d8ea050ba1cd7ecc3b591795"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
