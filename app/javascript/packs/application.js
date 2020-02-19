import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

//Froala WYSIWYG Editor for job description
const descriptionBox = document.getElementById('job_description');

if (descriptionBox) {
  new FroalaEditor('#job_description', {})
}

//Map
initMapbox();
