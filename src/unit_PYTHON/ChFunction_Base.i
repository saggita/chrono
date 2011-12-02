%{

/* Includes the header in the wrapper code */
#include "motion_functions/ChFunction_Base.h"
#include "motion_functions/ChFunction_Const.h"
#include "motion_functions/ChFunction_ConstAcc.h"
#include "motion_functions/ChFunction_Derive.h"
#include "motion_functions/ChFunction_Fillet3.h"
#include "motion_functions/ChFunction_Integrate.h"
#include "motion_functions/ChFunction_Mirror.h"
#include "motion_functions/ChFunction_Mocap.h"
#include "motion_functions/ChFunction_Noise.h"
#include "motion_functions/ChFunction_Operation.h"
#include "motion_functions/ChFunction_Oscilloscope.h"
#include "motion_functions/ChFunction_Poly.h"
#include "motion_functions/ChFunction_Poly345.h"
#include "motion_functions/ChFunction_Ramp.h"
#include "motion_functions/ChFunction_Recorder.h"
#include "motion_functions/ChFunction_Repeat.h"
#include "motion_functions/ChFunction_Sequence.h"
#include "motion_functions/ChFunction_Sigma.h"
#include "motion_functions/ChFunction_Sine.h"

	// Helper function that will be put in C++ wrapper and that will
	// be later used by %typemap in order to do downcasting to proper Python
	// class when a method returns a generic pointer to base ChFunction*
SWIGRUNTIME PyObject* DowncastChFunction(chrono::ChFunction* out)
{
  if (out)
  {
		if      ( typeid(*out)==typeid(chrono::ChFunction_Const) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Const, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_ConstAcc) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_ConstAcc, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Derive) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Derive, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Fillet3) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Fillet3, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Integrate) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Integrate, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Mirror) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Mirror, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Mocap) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Mocap, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Noise) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Noise, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Operation) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Operation, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Oscilloscope) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Oscilloscope, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Poly) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Poly, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Poly345) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Poly345, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Ramp) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Ramp, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Recorder) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Recorder, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Repeat) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Repeat, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Sequence) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Sequence, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Sigma) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Sigma, 0 |  0 );
		else if ( typeid(*out)==typeid(chrono::ChFunction_Sine) )
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction_Sine, 0 |  0 );
		
		else
			return SWIG_NewPointerObj(SWIG_as_voidptr(out), SWIGTYPE_p_chrono__ChFunction, 0 |  0 );
   }
}


%}

// Undefine ChApi otherwise SWIG gives a syntax error
#define ChApi 


// Cross-inheritance between Python and c++ for callbacks that must be inherited.
// Put this 'director' feature _before_ class wrapping declaration.
%feature("director") chrono::ChFunction;

/* Parse the header file to generate wrappers */
%include "../motion_functions/ChFunction_Base.h"  
%include "../motion_functions/ChFunction_Const.h"
%include "../motion_functions/ChFunction_ConstAcc.h"
%include "../motion_functions/ChFunction_Derive.h"
%include "../motion_functions/ChFunction_Fillet3.h"
%include "../motion_functions/ChFunction_Integrate.h"
%include "../motion_functions/ChFunction_Mirror.h"
%include "../motion_functions/ChFunction_Mocap.h"
%include "../motion_functions/ChFunction_Noise.h"
%include "../motion_functions/ChFunction_Operation.h"
%include "../motion_functions/ChFunction_Oscilloscope.h"
%include "../motion_functions/ChFunction_Poly.h"
%include "../motion_functions/ChFunction_Poly345.h"
%include "../motion_functions/ChFunction_Ramp.h"
%include "../motion_functions/ChFunction_Recorder.h"
%include "../motion_functions/ChFunction_Repeat.h"
%include "../motion_functions/ChFunction_Sequence.h"
%include "../motion_functions/ChFunction_Sigma.h"
%include "../motion_functions/ChFunction_Sine.h"


// Enforce the downcast the output, by promoting to proper subclass

%typemap(out) chrono::ChFunction* {
	$result=DowncastChFunction($1);
}


