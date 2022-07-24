import 'dart:core';

class Complex {
  final double real;
  final double imaginary;

  Complex({this.real = 0, this.imaginary = 0});

  Complex.ri(this.real, this.imaginary);

  Complex operator +(Complex b) {
    return Complex(
        real: this.real + b.real, imaginary: this.imaginary + b.imaginary);
  }

  Complex operator -(Complex b) {
    return Complex(
        real: this.real - b.real, imaginary: this.imaginary - b.imaginary);
  }

  Complex operator *(Complex b) {
    return Complex(
        real: this.real * b.real - this.imaginary * b.imaginary,
        imaginary: this.real * b.imaginary + this.imaginary * b.real);
  }

  Complex operator /(Complex b) {
    // https://stackoverflow.com/a/41146661/6846888
    var conjugation = b.conjugate();
    var denominatorRes = b * conjugation;

    // denominator has only real part
    var denominator = denominatorRes.real;
    var nominator = this * conjugation;

    return Complex(
        real: nominator.real / denominator,
        imaginary: nominator.imaginary / denominator);
  }

  bool operator ==(b) {
    return b.real == this.real && b.imaginary == this.imaginary;
  }

  @override
  String toString() {
    return 'Complex(real: ${real}, imaginary: ${imaginary})';
  }
}