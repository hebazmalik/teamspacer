import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#space_review_rating').barrating({
    theme: 'css-stars'
  });
  $('#restaurant_review_rating').barrating({
    theme: 'css-stars'
  });

};
export { initStarRating };