'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/360icon.png": "43a485debbe0b7bcbb57c72ac4c84b70",
"assets/AssetManifest.json": "8cdc34210e5625ed63a60e589d9cde9d",
"assets/assets/360icon.png": "43a485debbe0b7bcbb57c72ac4c84b70",
"assets/assets/desafio1.png": "8eca8b30e547a0a6868b6ee6ad695c44",
"assets/assets/fonts/CrimsonPro-Light.ttf": "a586e5521b165a14ce98e3d606fd9be6",
"assets/assets/fonts/Lato.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets/assets/SofaBoraCodar.gif": "bfbdcf6edc7f0263ba3706c62233940e",
"assets/assets/SofaBoraCodar2.png": "9b39e7cb5f5a6c6dc87e7db1ffb9fb0c",
"assets/CrimsonPro-Light.ttf": "a586e5521b165a14ce98e3d606fd9be6",
"assets/CrimsonPro.ttf": "7d6234f84dd4865c1dd08fef43871e5a",
"assets/desafio1.png": "8eca8b30e547a0a6868b6ee6ad695c44",
"assets/FontManifest.json": "3c7b5a977cd2309f5680c3755bf22f5d",
"assets/fonts/CrimsonPro-Light.ttf": "a586e5521b165a14ce98e3d606fd9be6",
"assets/fonts/CrimsonPro.ttf": "7d6234f84dd4865c1dd08fef43871e5a",
"assets/fonts/Lato.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/Lato.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets/NOTICES": "288fedb1323171843d34ffb23e746d17",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "00624fe51d8b3b9f3df75aea9ed00b15",
"assets/SofaBoraCodar.gif": "bfbdcf6edc7f0263ba3706c62233940e",
"assets/SofaBoraCodar2.png": "9b39e7cb5f5a6c6dc87e7db1ffb9fb0c",
"assets%20copy/AssetManifest.json": "8cdc34210e5625ed63a60e589d9cde9d",
"assets%20copy/assets/360icon.png": "43a485debbe0b7bcbb57c72ac4c84b70",
"assets%20copy/assets/desafio1.png": "8eca8b30e547a0a6868b6ee6ad695c44",
"assets%20copy/assets/fonts/CrimsonPro-Light.ttf": "a586e5521b165a14ce98e3d606fd9be6",
"assets%20copy/assets/fonts/Lato.ttf": "122dd68d69fe9587e062d20d9ff5de2a",
"assets%20copy/assets/SofaBoraCodar.gif": "bfbdcf6edc7f0263ba3706c62233940e",
"assets%20copy/assets/SofaBoraCodar2.png": "9b39e7cb5f5a6c6dc87e7db1ffb9fb0c",
"assets%20copy/desafio1.png": "8eca8b30e547a0a6868b6ee6ad695c44",
"assets%20copy/FontManifest.json": "3c7b5a977cd2309f5680c3755bf22f5d",
"assets%20copy/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets%20copy/NOTICES": "cb2a371b3ff75e0a9c4ec0e889c4b6be",
"assets%20copy/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets%20copy/shaders/ink_sparkle.frag": "00624fe51d8b3b9f3df75aea9ed00b15",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7092c104935089d4de73bd5cac46e36c",
"/": "7092c104935089d4de73bd5cac46e36c",
"main.dart.js": "e19a829b0359afc0cb7da3f8611871e6",
"manifest.json": "50254a94a5024e38c69a9ef603e5f583",
"version.json": "1dd0384a8068fd77e5b8298dc0d1b132"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
