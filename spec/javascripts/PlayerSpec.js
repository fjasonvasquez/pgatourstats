describe("Jasmine + Rails test", function() {
 it("works", function() {
 expect(true).toBeTruthy();
 });
 });

describe("I'm gonna make a fake test", function() {
  it("tries to do something", function() {
    expect(false).toBeFalsy();
  });
});

describe("Jasmine", function() {
  it("makes testing JavaScript awesome!", function() {
    expect(1+1).toBe(2);
  });
});

describe("A suite", function() {
  it("contains spec with an expectation", function() {
    expect(true).toBe(true);
  });
});

describe("A suite is just a function", function() {
  var a;

  it("and so is a spec", function() {
    a = true;

    expect(a).toBe(true);
  });
});

describe("Hello world", function() {
  var helloWorld;

 it("says hello", function() {

 expect(helloWorld).toBe(helloWorld);
 });
 });

describe('JavaScript addition operator', function () {  
    it('adds two numbers together', function () {  
        expect(1 + 2).toEqual(3);  
    });  
}); 

// describe("Player", function() {
//   var player;
//   var song;

//   beforeEach(function() {
//     player = new player();
//     song = new Song();


//   it("should be able to play a Song", function() {
//     player.play(song);
//     expect(player.currentlyPlayingSong).toEqual(song);

//     //demonstrates use of custom matcher
//     expect(player).toBePlaying(song);
//   });

//   describe("when song has been paused", function() {
//     beforeEach(function() {
//       player.play(song);
//       player.pause();
//     });

//     it("should indicate that the song is currently paused", function() {
//       expect(player.isPlaying).toBeFalsy();

//       // demonstrates use of 'not' with a custom matcher
//       expect(player).not.toBePlaying(song);
//     });

//     it("should be possible to resume", function() {
//       player.resume();
//       expect(player.isPlaying).toBeTruthy();
//       expect(player.currentlyPlayingSong).toEqual(song);
//     });
//   });

//   // demonstrates use of spies to intercept and test method calls
//   it("tells the current song if the user has made it a favorite", function() {
//     spyOn(song, 'persistFavoriteStatus');

//     player.play(song);
//     player.makeFavorite();

//     expect(song.persistFavoriteStatus).toHaveBeenCalledWith(true);
//   });

//   //demonstrates use of expected exceptions
//   describe("#resume", function() {
//     it("should throw an exception if song is already playing", function() {
//       player.play(song);

//       expect(function() {
//         player.resume();
//       }).toThrow("song is already playing");
//     });
//   });
// });

