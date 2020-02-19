import "bootstrap";
<<<<<<< HEAD
//Froala WYSIWYG Editor for job description
const descriptionBox = document.getElementById('job_description');

if (descriptionBox) {
  new FroalaEditor('#job_description', {})
}
=======
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
>>>>>>> 77db3227dc303e221991dc86b208d56969fdac24
