import random;

walker GuessGame {
    has correct_number: int = random.randint(1, 10);

    can start_game with entry {
        std.out("🎯 Welcome to the Number Guessing Game!");
        std.out("I'm thinking of a number between 1 and 10...");
        std.out("Try guessing it!");

        # Example of calling process_guess
        self.process_guess(5);  # Replace 5 with a user input if needed
    }

    def process_guess(guess: int) {
        if guess == self.correct_number {
            std.out(f"✅ Correct! The number was {self.correct_number}");
        } else:
            std.out(f"❌ Wrong guess. The number was {self.correct_number}");
        }
    }
}

node turn {
    can check with GuessGame entry;
}

with entry: __main__ {
    root spawn GuessGame();  # ✅ no arguments — matches definition
}
