/// @description load scores

name_chars = [0, 0, 0];
selected_letter = 0;
new_high_score = score > highscore_value(9);

for (var _i=0; _i<10; _i++) {
	highscore_add("AAA", 1);
}

convertToLetter = function(_n) {
    if (_n >= 0 && _n < 26) {
        return chr(_n + 65);
    } else {
        // Error state since you've gone past Z.
        return "";
    }
}

save = function() {
}
