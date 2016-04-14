$(document).ready(function() {

  $("#new-job-application-button").on("click", function() {
    tour.goTo(2);
  });

  var tour = new Tour({
    storage: false,
    steps: [
      {
        element: ".navbar-header",
        title: "Welcome!",
        content: "Welcome to your new Job Search Tracker!\n Click next to start the tour."
      },
      {
        element: "#new-job-application-button",
        title: "Create a Job Application",
        content: "Click here to begin the application creation process.",
        placement: "bottom",
        reflex: true
      },
      {
        element: "#job_application_job_applied_for",
        title: "Job Applied For",
        content: "Fill in what job you applied for.",
        placement: "bottom",
        reflex: true
      },
      {
        element: "#job_application_date_submitted",
        title: "Date Submitted",
        content: "Plug in what date you submitted the application.",
        placement: "bottom",
        reflex: true
      },
      {
        element: "#job_application_company_id",
        title: "Company",
        content: "Here you can select which company you applied to, if you don't see it here click the button down below to create one.",
        placement: "bottom",
        reflex: true
      },
      {
        element: "#job_application_resume",
        title: "Resume",
        content: "Click here if you want to upload a resume for this application.",
        placement: "bottom",
        reflex: true
      },
      {
        element: "#job_application_cover_letter",
        title: "Cover Letter",
        content: "Click here if you want to upload a cover letter.",
        placement: "bottom",
        reflex: true
      },
      {
        element: ".btn-success",
        title: "Create It!",
        content: "We are all set, just click below to create the application.",
        placement: "top",
        reflex: true
      },
      {
        element: "[name='View Application']",
        title: "Details",
        content: "Click here to view all the details of your newly created Job Application.",
        placement: "bottom",
        reflex: true
      },
    ]
  });

  tour.init(true);
  tour.start(true);
});
