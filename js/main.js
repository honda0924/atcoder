const card_mark = ['dia', 'heart', 'spade', 'clover'];
const card_num = [1,2,3,4,5,6,7,8,9,10];
function start() {
    const first_mark = card_mark[Math.floor(Math.random()* card_mark.length)];
    // const first_num = card_num[Math.floor(Math.random()* card_num.length)];
    const second_mark = checkType(first_mark)
    // const second_num = first_num;

    card_num.forEach(function (num) {
        console.log( '[' + first_mark + num + ']' + '[' + second_mark + num + ']');
    })
    

}
function checkType(mark) {
  let type;
  if(mark === 'dia'){
    type = 'heart'
  } else if(mark === 'heart'){
    type = 'dia'
  } else if(mark === 'spade'){
    type = 'clover'
  } else{
    type = 'spade'
  }
  return type;
}