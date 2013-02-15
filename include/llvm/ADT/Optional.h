//===-- Optional.h - Simple variant for passing optional values ---*- C++ -*-=//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file provides Optional, a template class modeled in the spirit of
//  OCaml's 'opt' variant.  The idea is to strongly type whether or not
//  a value can be optional.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_ADT_OPTIONAL_H
#define LLVM_ADT_OPTIONAL_H

#include "llvm/Support/Compiler.h"
#include <cassert>

#if LLVM_HAS_RVALUE_REFERENCES
#include <utility>
#endif

namespace llvm {

template<typename T>
class Optional {
  T x;
  bool hasVal;
public:
  explicit Optional() : x(), hasVal(false) {}
  Optional(const T &y) : x(y), hasVal(true) {}

#if LLVM_HAS_RVALUE_REFERENCES
  Optional(T &&y) : x(std::forward<T>(y)), hasVal(true) {}
#endif

  static inline Optional create(const T* y) {
    return y ? Optional(*y) : Optional();
  }

  Optional &operator=(const T &y) {
    x = y;
    hasVal = true;
    return *this;
  }
  
  const T* getPointer() const { assert(hasVal); return &x; }
  const T& getValue() const LLVM_LVALUE_FUNCTION { assert(hasVal); return x; }

  operator bool() const { return hasVal; }
  bool hasValue() const { return hasVal; }
  const T* operator->() const { return getPointer(); }
  const T& operator*() const LLVM_LVALUE_FUNCTION { assert(hasVal); return x; }

#if LLVM_HAS_RVALUE_REFERENCE_THIS
  T&& getValue() && { assert(hasVal); return std::move(x); }
  T&& operator*() && { assert(hasVal); return std::move(x); } 
#endif
};

template<typename T> struct simplify_type;

template <typename T>
struct simplify_type<const Optional<T> > {
  typedef const T* SimpleType;
  static SimpleType getSimplifiedValue(const Optional<T> &Val) {
    return Val.getPointer();
  }
};

template <typename T>
struct simplify_type<Optional<T> >
  : public simplify_type<const Optional<T> > {};

/// \brief Poison comparison between two \c Optional objects. Clients needs to
/// explicitly compare the underlying values and account for empty \c Optional
/// objects.
///
/// This routine will never be defined. It returns \c void to help diagnose 
/// errors at compile time.
template<typename T, typename U>
void operator==(const Optional<T> &X, const Optional<U> &Y);

/// \brief Poison comparison between two \c Optional objects. Clients needs to
/// explicitly compare the underlying values and account for empty \c Optional
/// objects.
///
/// This routine will never be defined. It returns \c void to help diagnose 
/// errors at compile time.
template<typename T, typename U>
void operator!=(const Optional<T> &X, const Optional<U> &Y);

/// \brief Poison comparison between two \c Optional objects. Clients needs to
/// explicitly compare the underlying values and account for empty \c Optional
/// objects.
///
/// This routine will never be defined. It returns \c void to help diagnose 
/// errors at compile time.
template<typename T, typename U>
void operator<(const Optional<T> &X, const Optional<U> &Y);

/// \brief Poison comparison between two \c Optional objects. Clients needs to
/// explicitly compare the underlying values and account for empty \c Optional
/// objects.
///
/// This routine will never be defined. It returns \c void to help diagnose 
/// errors at compile time.
template<typename T, typename U>
void operator<=(const Optional<T> &X, const Optional<U> &Y);

/// \brief Poison comparison between two \c Optional objects. Clients needs to
/// explicitly compare the underlying values and account for empty \c Optional
/// objects.
///
/// This routine will never be defined. It returns \c void to help diagnose 
/// errors at compile time.
template<typename T, typename U>
void operator>=(const Optional<T> &X, const Optional<U> &Y);

/// \brief Poison comparison between two \c Optional objects. Clients needs to
/// explicitly compare the underlying values and account for empty \c Optional
/// objects.
///
/// This routine will never be defined. It returns \c void to help diagnose 
/// errors at compile time.
template<typename T, typename U>
void operator>(const Optional<T> &X, const Optional<U> &Y);

} // end llvm namespace

#endif
