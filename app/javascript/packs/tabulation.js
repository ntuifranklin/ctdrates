
$('#nav-tab a[href="#nav-profile-tab"]').tab('show') // Select tab by name
$('#nav-tab a[href="#nav-contact-tab"]').tab('show') // Select tab by name
$('#nav-tab a[href="#nav-home-tab"]').tab('show') // Select tab by name

$('#nav-tab a').on('click', function (e) {
  e.preventDefault()
  $(this).tab('show')
})
