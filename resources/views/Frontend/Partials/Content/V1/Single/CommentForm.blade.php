<!-- Comment Form -->
<div id="respond" class="comment-respond">
  <div class="title-wrap">
    <h5 class="comment-respond__title section-title">Leave a Reply</h5>
  </div>
  <form id="form" class="comment-form" method="post" action="#">
    <p class="comment-form-comment">
      <label for="comment">Comment</label>
      <textarea id="comment" name="comment" rows="5" required="required"></textarea>
    </p>

    <div class="row row-20">
      <div class="col-lg-4">
        <label for="name">Name: *</label>
        <input name="name" id="name" type="text">
      </div>
      <div class="col-lg-4">
        <label for="comment">Email: *</label>
        <input name="email" id="email" type="email">
      </div>
      <div class="col-lg-4">
        <label for="comment">Website:</label>
        <input name="website" id="website" type="text">
      </div>
    </div>

    <p class="comment-form-submit">
      <input type="submit" class="btn btn-lg btn-color btn-button" value="Post Comment" id="submit-message">
    </p>

  </form>
</div> <!-- end comment form -->