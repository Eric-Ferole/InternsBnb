import "bootstrap";
//Froala WYSIWYG Editor for job description
const descriptionBox = document.getElementById('job_description');

if (descriptionBox) {
  new FroalaEditor('#job_description', {})
}
