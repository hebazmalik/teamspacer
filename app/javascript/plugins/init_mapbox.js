// import mapboxgl from 'mapbox-gl/dist/mapbox-gl-csp';
// import MapboxWorker from 'worker-loader!mapbox-gl/dist/mapbox-gl-csp-worker';
import mapboxgl from '!mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


const initMapbox = () => {
  const mapElement = document.getElementById('map');
  console.log('hi');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/chloebm/ckpwoqg1e43o517n3gujtac6h'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    // markers.forEach((marker) => {
    // new mapboxgl.Marker()
    //   .setLngLat([ marker.lng, marker.lat ])
    //   .addTo(map);
    // });
    if (map && markers) {
      addMarkersToMap(map, markers);
      fitMapToMarkers(map, markers);
    }
  }
  // if (!mapElement?.querySelector('canvas')) {
  //   window.location.reload();
  // }
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window); // add this
    const element = document.createElement('div');
    element.className = 'marker';

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

export { initMapbox };

