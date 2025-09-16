<?php
   include 'partials/header.php';
   
?>

        <section id="contactus">
            <br><br><br>
              <p id="contact-head">Contact us</p>
              <p id="contact-message">Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within a matter of hours to help you.</p>
              <div class="container">
                <div id="form-footer" class="row">
                  <div style="width: 67%!important;" class="col-md-8">
                    <div class="center-div">
                      <div class="contact-table">
                        <form action="https://formspree.io/f/mgerlvrl" method="POST" id="my-form">
                          <div class="input-container">
                            <label class="contact-inputs" for="validationCustom01">Your Name :</label>
                            <input type="text" class="form-control contact-inputs-tags" required id="validationCustom01" placeholder="Enter your name" name="name" onchange="validateFormInput()">
                          </div>
                          <div class="input-container">
                            <label class="contact-inputs" for="validationCustom02">Your Email :</label>
                            <input type="email" class="form-control contact-input-tags" required id="validationCustom02" placeholder="Enter your email address" name="email" onchange="validateFormInput()">
                          </div>
                          <div class="input-container">
                            <label class="contact-inputs" for="validationCustom03">Message :</label>
                            <textarea type="text" class="form-control contact-input-tags" required id="validationCustom03" placeholder="Enter your message here . . ." rows="4" name="message"></textarea>
                          </div>
                          <div>
                            <button id="submit-btn" class="btn btn-md btn-outline-primary" type="submit">SUBMIT</button>
                          </div>
                        </form>
                      </div>
    </section>

<?php
   include 'partials/footer.php';
   
?>