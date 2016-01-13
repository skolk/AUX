#include "BallValve.h"

BallValve::BallValve(uint8_t pinOpen, uint8_t pinClose) {
  _pinOpen = pinOpen;
  _pinClose = pinClose;

  pinMode(_pinOpen, OUTPUT);
  pinMode(_pinClose, OUTPUT);

  // On startup, we don't know what the state of the system is.
  // We won't know until we call either open() or close().
  _hasBeenSet = false;
  _isOpen = false;
}

void BallValve::open() {
  digitalWrite(_pinOpen, LOW);
  digitalWrite(_pinClose, HIGH);
  _hasBeenSet = true;
  _isOpen = true;
}

void BallValve::close() {
  digitalWrite(_pinOpen, HIGH);
  digitalWrite(_pinClose, LOW);

  _hasBeenSet = true;
  _isOpen = false;
}

void BallValve::setState(boolean _open) {
  if (_open) {
    open();
  } else {
    close();
  }
}

void BallValve::hold() {
  digitalWrite(_pinOpen, HIGH);
  digitalWrite(_pinClose, HIGH);
}

boolean BallValve::isOpen() {
  return _isOpen;
}

boolean BallValve::hasBeenSet() {
  return _hasBeenSet;
}