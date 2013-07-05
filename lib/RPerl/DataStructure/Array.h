#ifndef __CPP__INCLUDED__RPerl__DataStructure__Array_h

////# [[[ DATA TYPES ]]]
////use RPerl::DataType::Number;
#include <RPerl/DataType/Number.cpp>
////use RPerl::DataType::String;
#include <RPerl/DataType/String.cpp>
////use RPerl::DataType::Scalar;
////use RPerl::DataType::Unknown;

// [[[ TYPEDEFS FOR RPERL-TYPES-IN-C ]]]
typedef std::vector<int> int__array_ref;
typedef std::vector<int>::iterator int__array_ref__iterator;
typedef std::vector<int>::const_iterator int__array_ref__const_iterator;
typedef std::vector<number> number__array_ref;
typedef std::vector<number>::iterator number__array_ref__iterator;
typedef std::vector<number>::const_iterator number__array_ref__const_iterator;
typedef std::vector<string> string__array_ref;
typedef std::vector<string>::iterator string__array_ref__iterator;
typedef std::vector<string>::const_iterator string__array_ref__const_iterator;

// [[[ MACROS ]]]
#define VECTOR_RESIZE_NOSHRINK(my_vector, my_size) ((my_vector.size() < my_size) ? my_vector.resize((size_t)(my_size)) : (void)0)  // do grow but don't shrink

// [[[ TYPEMAP PACK/UNPACK SUBROUTINE PROTOTYPE DECLARATIONS FOR RPERL-TYPES-IN-C ]]]
int__array_ref XS_unpack_int__array_ref(SV *input_av_ref);
void XS_pack_int__array_ref(SV *output_av_ref, int__array_ref input_vector);
number__array_ref XS_unpack_number__array_ref(SV *input_av_ref);
void XS_pack_number__array_ref(SV *output_av_ref, number__array_ref input_vector);
string__array_ref XS_unpack_string__array_ref(SV *input_av_ref);
void XS_pack_string__array_ref(SV *output_av_ref, string__array_ref input_vector);

//# [[[ TYPE TESTING ]]]
//# [[[ TYPE TESTING ]]]
//# [[[ TYPE TESTING ]]]
void typetest___int__array_ref__in___void__out(int__array_ref lucky_numbers);
int__array_ref typetest___int__in___int__array_ref__out(int my_size);
void typetest___number__array_ref__in___void__out(number__array_ref lucky_numbers);
number__array_ref typetest___int__in___number__array_ref__out(int my_size);
void typetest___string__array_ref__in___void__out(string__array_ref people);
string__array_ref typetest___int__in___string__array_ref__out(int my_size);

#endif
#define __CPP__INCLUDED__RPerl__DataStructure__Array_h 1