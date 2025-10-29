impl Game.play {
    raise NotImplementedError("Subclasses must implement this method.");
}

impl GuessTheNumberGame.init {
    self.attempts = 10;
    self.correct_number = random.randint(1, 10);
}

impl GuessTheNumberGame.play {
    while self.attempts > 0 {
        guess = input("Guess your LuckyNumber Between 1 & 10:");
        if guess.isdigit() {
            self.process_guess(int(guess));
        } else {
            print("Invalid input! Buda Try Again.");
        }
    }
    if not self.won {
        print("Sorry, Wrong Guess Buda huna Luck Doomed you!");
    }
}

impl GuessTheNumberGame.process_guess(guess: int) {
    if guess > self.correct_number {
        print("Too High! Juu Sana");
        self.attempts -= 1;
    } elif guess < self.correct_number {
        print("Too Low! Chini Sana");
        self.attempts -= 1;
    } else {
        print("Congratulations! You Lucky asf!!.");
        self.won = True;
        self.attempts = 0;
        return;
    }
    self.attempts -= 1;
    print(f"You have {self.attempts} attempts left.");
}